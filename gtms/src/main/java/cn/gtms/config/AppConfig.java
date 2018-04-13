package cn.gtms.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import com.linkgoo.common.config.BizConfig;
import com.linkgoo.web.restful.controller.exception.GlobalExceptionHandler;

@Configuration
@MapperScan(basePackages = {"cn.gtms.**.repository*"})
@ComponentScan(basePackages = {"cn.gtms.**"})
@Import({ BizConfig.class })
public class AppConfig {
	@Bean
	public GlobalExceptionHandler globalExceptionHandler() {
		return new GlobalExceptionHandler();
	}
}