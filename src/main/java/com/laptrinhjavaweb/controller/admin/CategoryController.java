package com.laptrinhjavaweb.controller.admin;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.laptrinhjavaweb.constant.SystemConstant;
//import com.laptrinhjavaweb.dto.AbstractDTO;
//import com.laptrinhjavaweb.dto.BrandClassifyDTO;
//import com.laptrinhjavaweb.dto.BrandDTO;
//import com.laptrinhjavaweb.dto.CategoryDTO;
//import com.laptrinhjavaweb.dto.ClassifyDTO;
//import com.laptrinhjavaweb.service.IBrandClassifyService;
//import com.laptrinhjavaweb.service.IBrandService;
//import com.laptrinhjavaweb.service.ICategoryService;
//import com.laptrinhjavaweb.service.IClassifyService;
//import com.laptrinhjavaweb.util.CheckValidation;
//
//@Controller(value = "ControllerCategoOfAdmin")
//public class CategoryController {
//	@Autowired
//	@Qualifier("categoryService")
//	private ICategoryService categoryService;;
//
//	@Autowired
//	@Qualifier("classifyService")
//	private IClassifyService classifyService;;
//	
//	@Autowired
//	@Qualifier("brandService")
//	private IBrandService brandService;;
//	
//	@Autowired
//	@Qualifier("brandClassifyService")
//	private IBrandClassifyService brandClassifyService;;
//
//	@RequestMapping(value = { "/admin/{name}", "/admin/{name}/{type}",
//			"/admin/{name}/{type}/{id}" }, method = RequestMethod.GET)
//	public ModelAndView addOrListOrEditPage(@PathVariable("name") String name,
//			@PathVariable(name = "type", required = false) String type,
//			@PathVariable(name = "id", required = false) Long id, HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		String path = getPathURL(name, type);
//		if (type != null && type.equalsIgnoreCase(SystemConstant.EDIT)) {
//			AbstractDTO dto = null;
//			if (id != null) {
//				dto = getModelClass(name, id);
//				mav.addObject("dto", dto);
//			} else {
//				path = null;
//			}
//		} else if (type==null){
//			List<AbstractDTO> lstDTO = new ArrayList<AbstractDTO>();
//			lstDTO = getListModelClass(name);
//			mav.addObject("lstDTO", lstDTO);
//		}
//		if (path == null) {
//			path = "404page";
//		}
//
//		mav.setViewName(path);
//		
//		return mav;
//	}
//
//	@RequestMapping(value = "/ajax/admin/category/view", method = RequestMethod.GET)
//	public ModelAndView infornationCategoryPage(@RequestParam(value = "id") Long id) {
//		String path = "ajax/admin/category/view";
//		ModelAndView mav = new ModelAndView(path);
//		CategoryDTO category = categoryService.getOneById(id);
//		mav.addObject("category", category);
//		return mav;
//	}
//
//	@RequestMapping(value = { "/ajax/admin/{name}", "/ajax/admin/{name}/{code}" }, method = RequestMethod.GET)
//	public ModelAndView selectPage(@PathVariable("name") String name,
//			@PathVariable(name = "code", required = false) String code, HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		List<AbstractDTO> lstDTO = new ArrayList<AbstractDTO>();
//		if (name.equalsIgnoreCase(SystemConstant.CATEGORY)) {
//			for (CategoryDTO item : categoryService.getAll()) {
//				lstDTO.add(item);
//			}
//		} else if (name.equalsIgnoreCase(SystemConstant.CLASSIFY)) {
//			CategoryDTO category = categoryService.getOneByAlias(code);
//			if(category != null) {
//				for (ClassifyDTO item : classifyService.getAllByCategory(category.getId())) {
//					lstDTO.add(item);
//				}
//			}
//		} else if (name.equalsIgnoreCase(SystemConstant.BRAND)) {
//			for (BrandDTO item : brandService.getAll()) {
//				lstDTO.add(item);
//			}
//		} else if (name.equalsIgnoreCase(SystemConstant.BRAND_CLASSIFY)) {
//			ClassifyDTO classifyDTO = classifyService.getOneByAlias(code);
//			if(classifyDTO != null) {
//				for (BrandDTO item : brandClassifyService.getAllByClassify(classifyDTO.getId())) {
//					lstDTO.add(item);
//				}
//			}
//		}
//		mav.addObject("lstDTO", lstDTO);
//		mav.setViewName("ajax/admin/select");
//		return mav;
//	}
//	
//	@RequestMapping(value = { "/ajax/admin/tag/{name}/{code}"}, method = RequestMethod.GET)
//	public ModelAndView getTag(@PathVariable("name") String name,
//			@PathVariable(name = "code", required = false) String code, HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		BrandClassifyDTO dto = new BrandClassifyDTO();
//		if(name.equalsIgnoreCase(SystemConstant.BRAND_CLASSIFY)) {
//			dto = brandClassifyService.getOneByAlias(code);
//		}
//		mav.addObject("dto", dto);
//		mav.setViewName("ajax/admin/tag");
//		return mav;
//	}
//
//	private List<AbstractDTO> getListModelClass(String name) {
//		List<AbstractDTO> lstDto = new ArrayList<AbstractDTO>();
//		if (name.equalsIgnoreCase(SystemConstant.CATEGORY)) {
//			for (CategoryDTO item : categoryService.getAll()) {
//				lstDto.add(item);
//			}
//		} else if (name.equalsIgnoreCase(SystemConstant.CLASSIFY)) {
//			for (ClassifyDTO item : classifyService.getAll()) {
//				lstDto.add(item);
//			}
//		}
//		return lstDto;
//	}
//
//	private AbstractDTO getModelClass(String name, Long id) {
//		AbstractDTO dto = null;
//		if (name.equalsIgnoreCase(SystemConstant.CATEGORY)) {
//			if (CheckValidation.isExistCategoryById(id, categoryService)) {
//				dto = categoryService.getOneById(id);
//			}
//		} else if (name.equalsIgnoreCase(SystemConstant.CLASSIFY)) {
//			if (CheckValidation.isExistClasifyById(id, classifyService)) {
//				dto = categoryService.getOneById(id);
//			}
//		}
//		return dto;
//	}
//
//	private String getPathURL(String name, String type) {
//		String path = null;
//		if (name.equalsIgnoreCase(SystemConstant.CATEGORY) || name.equalsIgnoreCase(SystemConstant.CLASSIFY)
//				|| name.equalsIgnoreCase(SystemConstant.PRODUCT) || name.equalsIgnoreCase(SystemConstant.BRAND) ||
//				name.equalsIgnoreCase(SystemConstant.BRAND_CLASSIFY)) {
//			if (type != null) {
//				if (type.equalsIgnoreCase(SystemConstant.ADD) || type.equalsIgnoreCase(SystemConstant.EDIT)) {
//					path = "admin/" + name + "/" + type;
//				}
//			} else {
//				path = "admin/" + name + "/list";
//			}
//		}
//		return path;
//	}

//}
