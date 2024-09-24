# ⚙️ **LCD Interfacing with 8051 Microcontroller**

This repository demonstrates how to interface a **16x2 alphanumeric LCD** with the **8051 Microcontroller** using **Assembly language**. The project is designed to showcase a practical example of sending data from the **8051 microcontroller** to an LCD and includes **Proteus simulation files** for testing and visualization.

---


<div style="border: 2px solid #4CAF50; border-radius: 10px; padding: 20px; text-align: center; background-color: #f9f9f9; margin: 20px auto; width: 80%;">

  <p align="center">
    <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_8B_8051_Ckt.png" alt="AT89C51 Calculator" width="80%">
    <br>
    <b style="font-size: 1.5em;">Fig. 01: 8051 Microcontroller LCD Interface ( Schematic Diagram ).</b>
  </p>
  
  <p style="font-size: 1em; color: #555;">This diagram represents the <strong>circuit for interfacing the 16x2 LCD</strong> with the 8051 series <strong>AT89C51 Microcontroller</strong>. It includes essential connections for data transfer, control, and power, enabling the display of alphanumeric characters using <strong>8-bit data mode</strong>.</p>

</div>

---

## 🔑 **Keywords**

[**AT89C51 Microcontroller**](https://en.wikipedia.org/wiki/Intel_MCS-51) | [**Assembly Language**](https://en.wikipedia.org/wiki/Assembly_language) | [**Proteus**](https://www.labcenter.com/) | [**16x2 LCD**](https://en.wikipedia.org/wiki/Liquid-crystal_display) | [**LCD Interfacing**](https://en.wikipedia.org/wiki/Liquid-crystal_display)

---


## ⚙️ **Project Overview**

This project demonstrates the **interfacing of a LCD** with the **[AT89C51](https://www.atmel.com/products/microcontrollers/8051.aspx)** microcontroller, part of the **[8051 MCU](https://en.wikipedia.org/wiki/Intel_MCS-51)** family. It allows for displaying data on the LCD, making it a practical example for educational purposes and embedded systems applications.

---

## 🔧 **Key Features**

<div align="center">

| Feature                      | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📟 **LCD Display**              | Displays user input and output results                                     |
| 🖥️ **Proteus Simulation**      | Ready-to-use simulation circuit compatible with Proteus 8.9                |
| 💾 **Assembly Programming**    | Optimized assembly code for efficient execution on the AT89C51              |
| 🛠️ **Real Hardware Support**   | Successfully tested on actual hardware for reliable performance              |

</div>

---
# 📦 **What’s Included?**

<div align="center">

| **File**               | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| **Assembly Code**       | The core assembly code that handles the initialization and operation of the LCD. You will find it as a file name "exampleproject.asm" |
| **Proteus Simulation**  | A ready-to-use simulation file to test the LCD interface in Proteus.  You will find it as a file name "exampleproject.pdsjr"    |
| **HEX File**            | The compiled HEX file for uploading to the 8051 microcontroller.  You will find it as a file name "exampleproject.hex"       |
| **Test Run Image**      | Image showing the test run result.                                      |

</div>



## 📑 **Table of Contents**
1. [LCD Display](#lcd-display)
2. [16×2 LCD Pin Diagram](#16x2-lcd-pin-diagram)
3. [Pin Description](#pin-description)
4. [LCD Commands](#lcd-commands)
5. [Interfacing LCD with Microcontroller – Circuit Diagram](#interfacing-lcd-with-microcontroller--circuit-diagram)
6. [LCD Interfacing with 8051 Microcontroller – Programming](#lcd-interfacing-with-8051-microcontroller--programming)
7. [Send Data](#send-data)
8. [Send String](#send-string)
9. [Send Command](#send-command)
10. [LCD Initializing](#lcd-initializing)
11. [LCD Interfacing with 8051 – Full Code](#lcd-interfacing-with-8051--full-code)
12. [LCD Interfacing with 8051 – Working](#lcd-interfacing-with-8051--working)
13. [Tasks](#tasks)
14. [Discover more from EmbeTronicX](#discover-more-from-embetronicx)

---



## 🖥️ **Installation & Usage**

### **Step-by-Step Guide:**

1. **Clone this repository**:
   ```bash
   git clone https://github.com/gmostofabd/AT89C51_LCD_Keypad_Interfacing.git
   ```

2. **Compile the Assembly Code**:
   Open the `AT89C51_LCD_Keypad.asm` file in **MIDE-51** or any compatible IDE, and compile it to generate the **HEX file**.

3. **Simulate in Proteus**:
   Open **Proteus Design Suite**, load the provided simulation file, and run the simulation to observe the interface's functionality.

4. **Program the Microcontroller**:
   For real hardware applications, upload the **HEX file** to the AT89C51 microcontroller using a compatible programmer.

5. **Test the Circuit**:
   Assemble the hardware according to the provided circuit diagram, power it on, and verify functionality.

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_circuit.png" alt="LCD Interfacing Circuit" width="70%">
</p>

---

## 🛠️ **Hardware Requirements**

The main components used in this project include:

<div align="center">

| **Hardware Component**         | **Description**                                                           |
|---------------------------------|---------------------------------------------------------------------------|
| **AT89C51 Microcontroller**     | Central unit managing input and output operations                         |
| **LCD**                         | 16x2 LCD for displaying data and results                                  |
| **Resistors**                   | Current-limiting resistors to protect components from overcurrent          |
| **Power Supply**                | A 5V DC power supply for the microcontroller and LCD circuit              |

</div>

---

## 📚 **Code Explanation**

Comments are provided within the code to explain its functionality. Below are the key functions:

- `lcd_cmd()`: Sends commands to the LCD (RS=0).
- `lcd_data()`: Sends data to the LCD (RS=1).
- `msdelay()`: Generates a delay for LCD operations.
- `lcd_init()`: Initializes the LCD with preset commands.

---

## 📚 **Learn More**

You can explore additional resources for further learning:
- [8051 Assembly Language Programming](https://embedded-lab.com/)
- [LCD Interfacing Techniques](https://components101.com/)
- [Proteus Simulation Tutorials](https://www.labcenter.com/)

---

This enhanced structure should provide clear sections, detailed features, and step-by-step instructions for the LCD Interfacing project using the 8051 Microcontroller.
