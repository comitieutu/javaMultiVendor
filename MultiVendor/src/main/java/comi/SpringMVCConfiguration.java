package comi;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class SpringMVCConfiguration implements WebMvcConfigurer {
//
////	@Bean
////	public UrlBasedViewResolver viewResolver() {
////		UrlBasedViewResolver urlBasedViewResolver = new UrlBasedViewResolver();
////		urlBasedViewResolver.setViewClass(TilesView.class);
////		return urlBasedViewResolver;
////	}
//	
//	@Bean
//	public TilesConfigurer tilesConfigurer() {
//		TilesConfigurer configurer = new TilesConfigurer();
//		configurer.setDefinitions(new String[] {
//			"/WEB-INF/tiles/tiles.xml",
//			"/WEB-INF/tiles/tiles_admin.xml"
//		});
//		return configurer;
//	}
//	
//	@Override
//    public void configureViewResolvers(ViewResolverRegistry registry) {
//        TilesViewResolver viewResolver = new TilesViewResolver();
//        registry.viewResolver(viewResolver);
//    }

	@Bean
	public UrlBasedViewResolver viewResolver() {
	    UrlBasedViewResolver urlBasedViewResolver = new UrlBasedViewResolver();
	    urlBasedViewResolver.setViewClass(TilesView.class);
	    urlBasedViewResolver.setExposedContextBeanNames("dynamicMenuContext");
	    return urlBasedViewResolver;
	}
	
	@Bean
	public TilesConfigurer tilesConfigurer() {
	    TilesConfigurer configurer = new TilesConfigurer();
	    configurer.setDefinitions("/WEB-INF/tiles/tiles.xml", "/WEB-INF/tiles/tiles_admin.xml");
	    return configurer;
	}

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource bundleMessageSource = new ResourceBundleMessageSource();
		bundleMessageSource.setBasename("messages");
		return bundleMessageSource;
	}

}
