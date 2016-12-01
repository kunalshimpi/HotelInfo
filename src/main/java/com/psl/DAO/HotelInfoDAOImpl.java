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
		List<Hotel> list = template.query("select * from hotel_info",
				new RowMapper<Hotel>() {

					@Override
					public Hotel mapRow(ResultSet rs, int rownum)
							throws SQLException {

						Hotel h = new Hotel();
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
		//System.out.println(list);
		List<Hotel> listCity = new ArrayList<Hotel>();
		
		for (Hotel hotel : list) {
		//	System.out.println(hotel);
			if (hotel.getCity().equalsIgnoreCase(city)) {
				listCity.add(hotel);
			}
		}
		//System.out.println(listCity);
		return listCity;

	}

	@Override
	public void addInfoToDB(Hotel h) {
		template.update("insert into hotel_info values(" + h.getHotelId()
				+ ",'" + h.getHotelName() + "','" + h.getAddress() + "','"
				+ h.getCity() + "','" + h.getState() + "','" + h.getTelephone()
				+ "','" + h.getLongitude() + "','" + h.getLatitude() + "','"
				+ h.getRating() + "')");
	}

	@Override
	public void addUser(User u) {
		template.update("insert into login_info values(" + u.getUserId() + ",'"
				+ u.getFirstName() + "','" + u.getLastName() + "','"
				+ u.getCountry() + "','" + u.getEmailId() + "','"
				+ u.getPassword() + "')");
	}

	@Override
	public boolean checkLogIn(User user) {
		String sql = "select password from login_info where emailId = ?";

		Object[] inputs = new Object[] { user.getEmailId() };
		String pass = template.queryForObject(sql, inputs, String.class);
		if (pass.equals(user.getPassword())) {
			return true;
		} else {
			return false;
		}
		/*
		 * String query = "select name from employee where emp_id=?"; Object[]
		 * inputs = new Object[] {empId}; String empName =
		 * getJdbcTemplate().queryForObject(query, inputs, String.class); return
		 * empName;
		 */
	}

}
