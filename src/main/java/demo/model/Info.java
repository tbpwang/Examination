package demo.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class Info extends BaseModel {

    private Integer id;
    private String date;
    private double baoxian;
    private double gongjijin;
    private int userId;
}