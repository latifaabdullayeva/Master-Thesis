package com.autonomoussystemserver.server.database.model;

import javax.persistence.*;

@Table(name = "personality")
@Entity
public class Personality {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "personality_id", unique = true, nullable = false, updatable = false)
    private Integer id;

    @Column(name = "personality_name", nullable = false, updatable = false)
    private String personality_name;

    @Column(name = "hue_color", nullable = false, updatable = false)
    private String hue_color;

    @Column(name = "hue_bri", nullable = false, updatable = false)
    private Integer bri;

    @Column(name = "hue_hue", nullable = false, updatable = false)
    private Integer hue;

    @Column(name = "hue_sat", nullable = false, updatable = false)
    private Integer sat;

    @Column(name = "screen_color", nullable = false, updatable = false)
    private String screen_color;

    @Column(name = "vibration_level", nullable = false, updatable = false)
    private Integer vibration_level;

    @Column(name = "music_genre", nullable = false, updatable = false)
    private String music_genre;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPersonality_name() {
        return personality_name;
    }

    public void setPersonality_name(String personality_name) {
        this.personality_name = personality_name;
    }

    public String getHue_color() {
        return hue_color;
    }

    public void setHue_color(String hue_color) {
        this.hue_color = hue_color;
    }

    public Integer getBri() {
        return bri;
    }

    public void setBri(Integer bri) {
        this.bri = bri;
    }

    public Integer getHue() {
        return hue;
    }

    public void setHue(Integer hue) {
        this.hue = hue;
    }

    public Integer getSat() {
        return sat;
    }

    public void setSat(Integer sat) {
        this.sat = sat;
    }

    public String getScreen_color() {
        return screen_color;
    }

    public void setScreen_color(String screen_color) {
        this.screen_color = screen_color;
    }

    public Integer getVibration_level() {
        return vibration_level;
    }

    public void setVibration_level(Integer vibration_level) {
        this.vibration_level = vibration_level;
    }

    public String getMusic_genre() {
        return music_genre;
    }

    public void setMusic_genre(String music_genre) {
        this.music_genre = music_genre;
    }
}
