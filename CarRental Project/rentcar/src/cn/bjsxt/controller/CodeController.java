package cn.bjsxt.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CodeController {

	/**
	 * 生成验证码
	 * 
	 * @param req
	 * @param resp
	 * @throws IOException
	 */
	@RequestMapping("/code")
	public void getCode(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int width = 90;
		int height = 40;
		int codeCount = 4;
		int xx = 15;
		int fontHeight = 24;
		int codeY = 28;
		int line = 40;// Number of interfering lines
		char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
				'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
				'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
		// Defining the image buffer
		BufferedImage buffImg = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// Graphics2D gd = buffImg.createGraphics();
		// Graphics2D gd = (Graphics2D) buffImg.getGraphics();
		Graphics gd = buffImg.getGraphics();
		// Create a random number generator class
		Random random = new Random();

		gd.setColor(Color.WHITE);
		gd.fillRect(0, 0, width, height);

		// Create a font, which should be sized according to the height of the image.
		Font font = new Font("Fixedsys", Font.BOLD, fontHeight);

		gd.setFont(font);

		// gd.setColor(Color.BLACK);
		gd.drawRect(0, 0, width - 1, height - 1);

		// 40 interference lines are randomly generated to make the authentication code
		// in the image difficult to be detected by other programs.
		gd.setColor(Color.BLACK);
		for (int i = 0; i < line; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			gd.drawLine(x, y, x + xl, y + yl);
		}

		// randomCode用于保存随机产生的验证码，以便用户登录后进行验证。
		StringBuffer randomCode = new StringBuffer();
		int red = 0, green = 0, blue = 0;

		// Captchas that randomly generate codeCount numbers.
		for (int i = 0; i < codeCount; i++) {
			String code = String.valueOf(codeSequence[random.nextInt(36)]);

			red = random.nextInt(255);
			green = random.nextInt(255);
			blue = random.nextInt(255);

			gd.setColor(new Color(red, green, blue));
			gd.drawString(code, (i + 1) * xx, codeY);

			randomCode.append(code);
		}
		// Save the four-digit CAPTCHA to the Session.
		HttpSession session = req.getSession();
		session.setAttribute("code", randomCode.toString());

		// Disable image caching.
		resp.setHeader("Pragma", "no-cache");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setDateHeader("Expires", 0);

		resp.setContentType("image/jpeg");

		// Output the image to the Servlet output stream.
		ServletOutputStream sos = resp.getOutputStream();
		ImageIO.write(buffImg, "jpeg", sos);
		sos.close();
	}

}
