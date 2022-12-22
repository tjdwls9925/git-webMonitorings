package com.master.grow.user.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class UserTO {
	@JsonProperty
	private String code;
	@JsonProperty
	private String userID;
	@JsonProperty
	private String userName;
	@JsonProperty
	private String userEmail;
	@JsonProperty
	private String userPassword;
	@JsonProperty
	private String userPhone;
	@JsonProperty
	private String userGender;
	@JsonProperty
	private String userBirth;
	@JsonProperty
	private String userMembership;
	@JsonProperty
	private String userSignupDate;
	
	
}
