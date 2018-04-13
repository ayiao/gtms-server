package cn.gtms.config;

import static com.google.common.collect.Lists.newArrayList;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMethod;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.builders.ResponseMessageBuilder;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Parameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

	@Bean
	public Docket api() {
		ParameterBuilder tokenPar = new ParameterBuilder();  
		List<Parameter> pars = new ArrayList<>();  
		tokenPar.name("Authorization").description("令牌").modelRef(new ModelRef("string")).parameterType("header").required(false).build();  
		pars.add(tokenPar.build()); 
		ParameterBuilder langPar = new ParameterBuilder();
		langPar.name("Accept-Language").description("语言").modelRef(new ModelRef("String")).parameterType("header").required(false).build();
		pars.add(langPar.build());
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors
						.basePackage("cn.gtms"))
				.paths(PathSelectors.any())
				.build()
				.globalOperationParameters(pars)
				.apiInfo(apiInfo())
				.useDefaultResponseMessages(false)
				.globalResponseMessage(
						RequestMethod.GET,
						newArrayList(
								new ResponseMessageBuilder().code(500)
								.message("500 message")
								.responseModel(new ModelRef("Error"))
								.build(), new ResponseMessageBuilder()
								.code(403).message("Forbidden!!!!!")
								.build()));
	}

	private ApiInfo apiInfo() {
		return new ApiInfoBuilder().title("cpo Rest api")
				.description("application Document").version("v1.0.0")
				.termsOfServiceUrl("http://localhost:8080")
				.license("Company: Copyright @ 2017 Linkgoo版权所有")
				.licenseUrl("http://localhost:8080").build();
	}

}
