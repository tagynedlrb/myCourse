package kr.ac.hansung.model;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Course {

	private int id;

	@Digits(integer=4, fraction=0, message="year must be in 4 digits")
	@NotNull(message="This section must not be empty")
	private int year;
	
	@Digits(integer=1, fraction=0, message="Semester must be 1 or 2")
	@NotNull(message="This section must not be empty")
	private int semester;
	
	@Size(min=2, max=100, message="Name must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String name;
	
	@Size(min=2, max=100, message="Type must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String type;
	
	@Size(min=2, max=100, message="Professor must be between 2 and 100 chars")
	@NotEmpty(message="This section must not be empty")
	private String professor;
	
	@Digits(integer=1, fraction=0, message="point must be a single digit")
	@NotNull(message="This section must not be empty")
	private int point;

}
