package comi.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter;

import comi.services.UserService;

@EnableWebSecurity
@Configuration
public class ClientSecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserService userService;
	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		
		httpSecurity.cors().and().csrf().disable();
		
		httpSecurity.authorizeRequests()
					.antMatchers("/admin**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.antMatchers("/admin/product/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.antMatchers("/admin/category/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN')")
					.antMatchers("/auth**").access("hasRole('CUSTOMER')")
					.and() 
					.formLogin().loginPage("/login")
					.loginProcessingUrl("/process-login")
					.defaultSuccessUrl("/")
					.failureUrl("/login?error")
					.usernameParameter("username").passwordParameter("password")
					.and()
					.logout().logoutUrl("/logout")
					.logoutSuccessUrl("/login")
					.deleteCookies("JSESSIONID")
					.and()
					.exceptionHandling().accessDeniedPage("/accessDenied")
					.and().sessionManagement();
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
	
	@Bean
	public SecurityContextHolderAwareRequestFilter awareRequestFilter() {
	    return new SecurityContextHolderAwareRequestFilter();
	}
	
	@Bean
	public SecurityContextPersistenceFilter persistenceFilter() {
		return new SecurityContextPersistenceFilter();
	}
	
}
