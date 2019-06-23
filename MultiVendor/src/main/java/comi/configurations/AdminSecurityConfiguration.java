package comi.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import comi.services.UserService;

@EnableWebSecurity
@Configuration
public class AdminSecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserService userService;
	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		
		httpSecurity.cors().and().csrf().disable();
		
		httpSecurity.authorizeRequests()
					.antMatchers("/admin**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.antMatchers("/admin/product/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.antMatchers("/admin/category/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.and() 
					.formLogin().loginPage("/admin/login")
					.loginProcessingUrl("/admin/process-login")
					.defaultSuccessUrl("/admin")
					.failureUrl("/admin/login?error")
					.usernameParameter("username").passwordParameter("password")
					.and()
					.logout().logoutUrl("/admin/logout")
					.logoutSuccessUrl("/admin/login")
					.and()
					.exceptionHandling().accessDeniedPage("/admin/accessDenied");
		
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder) 
			throws Exception {
		builder.userDetailsService(userService);
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
}