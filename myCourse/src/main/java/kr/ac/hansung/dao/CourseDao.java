package kr.ac.hansung.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kr.ac.hansung.model.Course;

@Component("courseDao")
public class CourseDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from courses";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);

	}

	// query and return a single object
	public Course getCourse(String name) {

		String sqlStatement = "select * from courses where name=?";
		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { name },
				new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course Course = new Course();

				Course.setId(rs.getInt("id"));
				Course.setYear(rs.getInt("year"));
				Course.setSemester(rs.getInt("semester"));
				Course.setName(rs.getString("name"));
				Course.setType(rs.getString("type"));
				Course.setProfessor(rs.getString("professor"));
				Course.setPoint(rs.getInt("point"));
				
				return Course;

			}
		});
	}

	//query and return multiple objects
	// cRud Method
	public List<Course> getCourses() {

		String sqlStatement = "select * from courses";
		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course Course = new Course();

				Course.setId(rs.getInt("id"));
				Course.setYear(rs.getInt("year"));
				Course.setSemester(rs.getInt("semester"));
				Course.setName(rs.getString("name"));
				Course.setType(rs.getString("type"));
				Course.setProfessor(rs.getString("professor"));
				Course.setPoint(rs.getInt("point"));

				return Course;

			}
		});
	}
	
	public List<Course> getCertainCourses(int year, int semester) {

		String sqlStatement = "select * from courses where year=? and semester=?";
		return jdbcTemplate.query(sqlStatement,new Object[] {year, semester}, new RowMapper<Course>() {
			
			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course Course = new Course();

				Course.setId(rs.getInt("id"));
				Course.setYear(rs.getInt("year"));
				Course.setSemester(rs.getInt("semester"));
				Course.setName(rs.getString("name"));
				Course.setType(rs.getString("type"));
				Course.setProfessor(rs.getString("professor"));
				Course.setPoint(rs.getInt("point"));

				return Course;

			}
		});
	}
	
	// Crud Method
	public boolean insert(Course course) {
		
		int year = course.getYear();
		int semester = course.getSemester();
		String name = course.getName();
		String type = course.getType();
		String professor = course.getProfessor();
		int point = course.getPoint();
		
		String sqlStatement = "insert into courses (year, semester, name, type, professor, point) values (?, ?, ?, ?, ?, ?)";
		
		return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, name, type, professor, point}) == 1);
		}

	// crUd Method
	public boolean update(Course course) {
		
		int id = course.getId();
		int year = course.getYear();
		int semester = course.getSemester();
		String name = course.getName();
		String type = course.getType();
		String professor = course.getProfessor();
		int point = course.getPoint();
		
		String sqlStatement = "update courses set year=?, semester=?, name=?, type=?, professor=?, point=? where id=?";
		
		return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, name, type, professor, point, id}) == 1);
		}

	// cruD Method
	public boolean delete(int id) {
		
		String sqlStatement = "delete from courses where id=?";		
		return (jdbcTemplate.update(sqlStatement, new Object[] {id}) == 1);
		}

}
