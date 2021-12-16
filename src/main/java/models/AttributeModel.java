package models;

public class AttributeModel {

    String score;
    String time;

    public AttributeModel(String score,
                     String time) {
        this.score = score;
        this.time = time;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getScore() {
        return score;
    }

    public String getTime() {
        return time;
    }
}


