package net.manxlei.springboot.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	//Create User - reddy/password
	@Autowired
    public void configureGlobalSecurity(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.inMemoryAuthentication().withUser("victoria").password("victoria")
                .roles("USER", "ADMIN").and().withUser("cici").password("cici")
        		.roles("USER", "ADMIN");
    }
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);
        http.addFilterBefore(filter,CsrfFilter.class);
        
        http.authorizeRequests().antMatchers("/login").permitAll()
                .antMatchers("/", "/home", "/h2/**", "/*todo*/**","/*chart*/**").access("hasRole('USER')").and()
                .formLogin().loginPage("/login");
        http.csrf().disable();
        http.headers().frameOptions().disable();
    }
}
