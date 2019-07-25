package comi.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import comi.paypal.PayPalConfig;

@Service("payPalService")
public class PayPalServiceImp implements PayPalService {
	
	@Autowired
	private Environment environment;

	@Override
	public PayPalConfig getPayPalConfig() {

		PayPalConfig payPalConfig = new PayPalConfig();
		payPalConfig.setAuthToken(environment.getProperty("paypal.authtoken"));
		payPalConfig.setBusiness(environment.getProperty("paypal.business"));
		payPalConfig.setPosturl(environment.getProperty("paypal.posturl"));
		payPalConfig.setReturnurl(environment.getProperty("paypal.returnurl"));
		return payPalConfig;
	}

	
	
}
