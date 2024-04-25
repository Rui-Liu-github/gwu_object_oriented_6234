package cn.bjsxt.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import cn.bjsxt.pojo.Car;
import cn.bjsxt.pojo.RentTable;
import cn.bjsxt.service.CarService;

@Controller
public class CarConroller {
	@Autowired
	private CarService carService;

	@RequestMapping("findSomeCarsForCust")
	public String findSomeCarsForCust(HttpServletRequest req) {
		boolean noChoice = true;
		List<Car> cars = new ArrayList<Car>();
		List<Car> newCars = new ArrayList<Car>();
		Map<String, Double> map = new HashMap<String, Double>();
		// Rental customer information is saved
		req.setAttribute("identity", req.getParameter("identity"));
		req.setAttribute("custid", req.getParameter("custid"));
		String[] types = req.getParameterValues("type");
		String[] brands = req.getParameterValues("brand");
		String slowRentPrice = req.getParameter("lowRentPrice");
		String shighRentPrice = req.getParameter("highRentPrice");

		// Different car model query
		if (types != null && types.length > 0) {
			noChoice = false;
			for (int i = 0; i < types.length; i++) {
				List<Car> carss = carService.findCarByType(types[i]);
				cars.addAll(carss);
			}
		}
		// Different car brand query
		if (brands != null && brands.length > 0) {
			noChoice = false;
			for (int i = 0; i < brands.length; i++) {
				List<Car> carss = carService.findCarByBrand(brands[i]);
				cars.addAll(carss);
			}
		}
		// Price range query
		Double lowRentPrice = null;
		if (slowRentPrice != null && slowRentPrice != "") {
			noChoice = false;
			lowRentPrice = Double.parseDouble(slowRentPrice);
		}
		map.put("lowRentPrice", lowRentPrice);
		Double highRentPrice = null;
		if (shighRentPrice != null && shighRentPrice != "") {
			noChoice = false;
			highRentPrice = Double.parseDouble(shighRentPrice);
		}
		map.put("highRentPrice", highRentPrice);
		if (lowRentPrice != null || highRentPrice != null) {
			List<Car> carss = carService.findCarsByPrice(map);
			cars.addAll(carss);
		}

		// remove duplicate cars from different filters,
		// because the remove container will automatically re-index the element, so I
		// solve it like this
		for (int i = 0; i < cars.size(); i++) {
			boolean flag = true;
			Car c1 = cars.get(i);
			for (int j = i + 1; j < cars.size(); j++) {
				Car c2 = cars.get(j);
				if (c1.getCarid() == c2.getCarid()) {
					flag = false;
				}
			}
			if (flag) {
				newCars.add(cars.get(i));
			}
		}

		// Display all without any query conditions
		if (noChoice) {
			newCars = carService.findAllCars();
		}

		req.setAttribute("cars", newCars);
		return "listCarForCust";
	}

	@RequestMapping("findCarForCustPage")
	public String findCarForCustPage() {
		return "findCarForCustPage";
	}

	@RequestMapping("findCarsInfo")
	@ResponseBody
	public String findCarsInfo() {
		List<Car> carsType = carService.findCarsType();
		List<Car> carsBrand = carService.findCarsBrand();
		List<Car> cars = new ArrayList<Car>();
		cars.addAll(carsBrand);
		cars.addAll(carsType);
		Gson gson = new Gson();
		String json = gson.toJson(cars);
		return json;
	}

	@RequestMapping("findCarForCust")
	public String findCarForCust(HttpServletRequest req) {
		int custid = Integer.parseInt(req.getParameter("custid"));
		String identity = req.getParameter("identity");
		req.setAttribute("custid", custid);
		req.setAttribute("identity", identity);
		Map map = new HashMap();
		List<Car> cars = carService.findCar(map);
		req.setAttribute("cars", cars);
		return "listCarForCust";
	}

	@RequestMapping("preUpdateCar")
	public String preUpdateCar(HttpServletRequest req) {
		int carId = Integer.parseInt(req.getParameter("carId"));
		Car car = carService.findCarById(carId);
		req.setAttribute("car", car);
		return "updateCar";
	}

	@RequestMapping("updateCarHandler")
	public String updateCar(@RequestParam(value = "imgFile") MultipartFile file, HttpServletRequest req)
			throws IllegalStateException, IOException {
		String newName = null;
		if (!file.isEmpty()) {
			String oldName = file.getOriginalFilename();
			File deleteFile = new File(
					req.getSession().getServletContext().getRealPath("/") + "/WEB-INF/static/images/cars/" + oldName);
			if (deleteFile.exists()) {
				deleteFile.delete();
			}
			newName = UUID.randomUUID().toString().replace("-", "") + oldName.substring(oldName.lastIndexOf("."));
			// According to the eclipse configuration Reploy path, get the absolute path of
			// the server (container)
			File savedFile = new File(
					req.getSession().getServletContext().getRealPath("/") + "/WEB-INF/static/images/cars/" + newName);
			System.out.println(savedFile);
			file.transferTo(savedFile); // 转存文件
		}

		int carId = Integer.parseInt(req.getParameter("carId"));
		String number = req.getParameter("number");
		String brand = req.getParameter("brand");
		String type = req.getParameter("type");
		String color = req.getParameter("color");
		double price = Double.parseDouble(req.getParameter("price"));
		double rentprice = Double.parseDouble(req.getParameter("rentprice"));
		double deposit = Double.parseDouble(req.getParameter("deposit"));
		String isrenting = req.getParameter("isrenting");
		String img = newName;
		String description = req.getParameter("description");
		Car car = new Car(carId, number, type, brand, color, price, rentprice, deposit, isrenting, img, description);
		System.out.println(car);
		int result = carService.updateCar(car);
		if (result > 0) {
			return "redirect:/findCarHandler";
		}
		return "error";
	}

	@RequestMapping("deleteCar")
	public String deleteCar(HttpServletRequest req) {
		int carId = Integer.parseInt(req.getParameter("carid"));
		Map map = new HashMap();
		map.put("carId", carId);
		int result = carService.deleteCarById(map);
		if (result > 0) {
			return "redirect:/findCarHandler";
		}
		return "error";
	}

	@RequestMapping("addCar")
	public String addCar() {
		return "addCar";
	}

	/**
	 * @param req
	 * @return
	 */
	@RequestMapping("findCarHandler")
	public String findCar(HttpServletRequest req) {
		Map map = new HashMap();
		String number = req.getParameter("number");
		map.put("number", number);
		String type = req.getParameter("type");
		map.put("type", type);

		String slowPrice = req.getParameter("lowPrice");
		Double lowPrice = null;
		if (slowPrice != null && slowPrice != "") {
			lowPrice = Double.parseDouble(slowPrice);
		}
		map.put("lowPrice", lowPrice);
		String shighPrice = req.getParameter("highPrice");
		Double highPrice = null;
		if (shighPrice != null && shighPrice != "") {
			highPrice = Double.parseDouble(shighPrice);
		}
		map.put("highPrice", highPrice);

		String slowRentPrice = req.getParameter("lowRentPrice");
		Double lowRentPrice = null;
		if (slowRentPrice != null && slowRentPrice != "") {
			lowRentPrice = Double.parseDouble(slowRentPrice);
		}
		map.put("lowRentPrice", lowRentPrice);
		String shighRentPrice = req.getParameter("highRentPrice");
		Double highRentPrice = null;
		if (shighRentPrice != null && shighRentPrice != "") {
			highRentPrice = Double.parseDouble(shighRentPrice);
		}
		map.put("highRentPrice", highRentPrice);

		String isrenting = req.getParameter("isrenting");
		if ("-1".equals(isrenting)) {
			isrenting = null;
		}
		map.put("isrenting", isrenting);

		List<Car> cars = carService.findCar(map);
		if (cars.size() > 0) {
			req.setAttribute("cars", cars);
		}

		return "listCar";
	}

	@RequestMapping("addCarHandler")
	public String addCar(@RequestParam(value = "imgFile") MultipartFile file, HttpServletRequest req)
			throws IllegalStateException, IOException {
		String newName = null;
		if (file.getSize() > 0) {
			String oldName = file.getOriginalFilename();
			newName = UUID.randomUUID().toString().replace("-", "") + oldName.substring(oldName.lastIndexOf("."));
			// According to the eclipse configuration Reploy path, to get the absolute path
			// of the server (container)
			File savedFile = new File(
					req.getSession().getServletContext().getRealPath("/") + "/WEB-INF/static/images/cars/" + newName);
			System.out.println(savedFile);
			file.transferTo(savedFile); // Dump files
		}

		String number = req.getParameter("number");
		String type = req.getParameter("type");
		String brand = req.getParameter("brand");
		String color = req.getParameter("color");
		double price = Double.parseDouble(req.getParameter("price"));
		double rentprice = Double.parseDouble(req.getParameter("rentprice"));
		double deposit = Double.parseDouble(req.getParameter("deposit"));
		String isrenting = req.getParameter("isrenting");
		String img = newName;
		String description = req.getParameter("description");
		Car car = new Car(number, type, brand, color, price, rentprice, deposit, isrenting, img, description);
		System.out.println(car);
		int result = carService.addCar(car);
		if (result > 0) {
			return "success";
		}
		return "error";
	}
}
