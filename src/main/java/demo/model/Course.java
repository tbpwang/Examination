package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class Course extends BaseModel {

    private Integer id;
    private String title;
    private String time;
    private String teacher;
    private int score;

    private List<User> students;
}