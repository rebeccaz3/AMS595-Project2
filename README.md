# AMS595-Project2
**Overview** 

This project explores the Mandelbrot Set, a complex fractal structure, using MATLAB. The primary objectives are to generate the set, identify its boundary, fit a polynomial to the boundary, and calculate the length of the boundary. The implementation is organized into these 4 parts, with each part handled by specific MATLAB scripts and functions.

**File Descriptions** 

* Mandelbrot_Set_Script.m: Main script that orchestrates the exploration of the Mandelbrot Set, it will call the other functions. 

* fractal.m: Calculates the number of iterations for a complex point to determine if it belongs to the Mandelbrot Set.

* indicator_fn_at_x.m: Creates an indicator function for a vertical line at a given real value x (assigns values 1 for divergence, -1 for no divergence)

* bisection.m: Implements the bisection method to find boundary points of the fractal. It identifies where the indicator function switches sign, which are points that lie on the boundary. 

* poly_len.m: Computes the length of the fitted polynomial curve.


**How to Use** 

* Open all files in MATLAB.

* Run the Mandelbrot_Set_Script.m file. 

**Output**

The script will generate 3 visualizations of the Mandelbrot Set and its boundary points.

* The Mandelbrot Set, showcasing the distribution of points.

* The boundary points identified using the bisection method.

* The polynomial fit to the boundary points, illustrating how well the polynomial represents the fractal’s edge.

It will also display the approximate length of the fractal boundary in the MATLAB command window.

