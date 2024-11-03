package com.klu.OMCS;

	import org.springframework.web.client.RestTemplate;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.stereotype.Controller;

	@Controller
	public class LoginController {

	    private static final String RECAPTCHA_SECRET_KEY = "6Lf_EnAqAAAAAKWU_B_PkEQOwxXAtdjJaMu-zRYC";
	    private static final String RECAPTCHA_VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify";

	    @PostMapping("/login")
	    public String login(@RequestParam("username") String username,
	                        @RequestParam("password") String password,
	                        @RequestParam("g-recaptcha-response") String recaptchaResponse) {
	        
	        RestTemplate restTemplate = new RestTemplate();
	        String verificationUrl = String.format("%s?secret=%s&response=%s", RECAPTCHA_VERIFY_URL, RECAPTCHA_SECRET_KEY, recaptchaResponse);

	        RecaptchaResponse response = restTemplate.postForObject(verificationUrl, null, RecaptchaResponse.class);

	        if (response.isSuccess()) {
	            // Proceed with login logic
	            return "home";
	        } else {
	            // Handle failed CAPTCHA verification
	            return "login";
	        }
	    }

	    static class RecaptchaResponse {
	        private boolean success;
	        // other fields like `challenge_ts` and `hostname`

	        public boolean isSuccess() {
	            return success;
	        }
	    }
	}
