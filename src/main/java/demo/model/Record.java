package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class Record extends BaseModel {

    private Integer id;
    private String date;
    private String content;
    private int userId;
}