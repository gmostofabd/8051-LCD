# ⚙️ **8051 LCD**

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_models.png" alt="AT89C51 Calculator" width="70%">
</p>

This repository demonstrates how to interface a **16x2 alphanumeric LCD** with the **8051 Microcontroller** using **Assembly language**. The project is designed to showcase a practical example of sending data from the **8051 microcontroller** to an LCD and includes **Proteus simulation files** for testing and visualization.

The project involves setting up the **LCD in 4-bit mode** to reduce pin usage, making it suitable for embedded systems where limited I/O pins are available. The data is transferred in two 4-bit nibbles, simplifying the circuit while maintaining full functionality.

##  **8051 LCD Interfacing with Assembly Code and Proteus Simulation**
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_8B_8051_Ckt.png" alt="AT89C51 Calculator" width="70%">
</p>




Using a **1602 LCD** with microcontrollers like the **8051** (or any other MCU) and simulating the circuit in **Proteus** requires several steps. The **1602 LCD** is a common 16x2 character display used in embedded systems for displaying information.

> **Note**: The resistor network **RN1** in the Proteus schematic is needed only in the simulator (for **PORT 0**), but not in real hardware, where it has been successfully tested without external resistor pull-ups.

---

# ⚙️ **Project Overview**

This project demonstrates the **interfacing of an LCD** with the **[AT89C51](https://www.atmel.com/products/microcontrollers/8051.aspx)** microcontroller, part of the **[8051 MCU](https://en.wikipedia.org/wiki/Intel_MCS-51)** family. It allows for displaying data on the LCD, making it a practical example for educational purposes and embedded systems applications.

In this project, we cover:

- Configuring the **LCD in 4-bit mode** to save microcontroller pins.
- Sending commands such as clearing the display, setting the cursor position, and controlling the display (on/off, blinking).
- Displaying **alphanumeric characters** on the LCD, including custom messages.
- Implementing **timing and delays** to ensure reliable communication between the microcontroller and the LCD.

---

## ⚙️ **Key Features**

<div align="center">

| Feature                      | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📟 **LCD Display**              | Displays user input and output results                                     |
| 🖥️ **Proteus Simulation**      | Ready-to-use simulation circuit compatible with Proteus 8.9                |
| 💾 **Assembly Programming**    | Optimized assembly code for efficient execution on the AT89C51              |
| 🛠️ **Real Hardware Support**   | Successfully tested on actual hardware for reliable performance              |

</div>

---

## 🔑 **Key Topics**

- **LCD Interfacing** with the **8051 Microcontroller**.
- **Programming in Assembly language** for 8051.
- **Simulation** using Proteus Design Suite.
- **4-bit data communication** with an LCD.

---

## 🔑 **Keywords**

**[AT89C51 Microcontroller](https://www.atmel.com/products/microcontrollers/8051.aspx)** | **[8051](https://en.wikipedia.org/wiki/Intel_MCS-51)** | **[Assembly Language](https://en.wikipedia.org/wiki/Assembly_language)** | **[Simulation](https://www.labcenter.com/)** | **[Proteus](https://www.labcenter.com/)** | **[LCD Interfacing](https://en.wikipedia.org/wiki/Liquid-crystal_display)**

---

#  📦 What’s Included?
The repository contains the following files:

1.  Assembly Code: The core assembly code that handles the initialization and operation of the LCD.
2.  Proteus Simulation: A ready-to-use simulation file to test the LCD interface in Proteus.
3.  HEX File: The compiled HEX file for uploading to the 8051 microcontroller.
4.  Image of test run

---

# 🛠️ **Hardware Requirements**

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

# 📺 **Alphanumeric LCD Overview**

An **Alphanumeric LCD** is a flat-panel display that can show both letters and numbers. It consists of a grid of pixels that can display characters and symbols.

### Key Features:
- **Character Format**: 16x2 (16 characters on each line).
- **Backlight**: Optional LED backlight for low-light environments.
- **4-bit/8-bit Interface**: Can communicate using 4 or 8 data lines.
- **Low Power Consumption**: Ideal for battery-powered applications.

<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_Pinout.png" alt="LCD Pinout" width="70%">
</p>

### Pin Configuration:

<div align="center">

| **Pin** | **Name** | **Description**                                |
|:------:|:------:|:-------------------------------------------------:|
|   1    |   VSS   | Ground (GND)                                      |
|   2    |   VDD   | Power supply (+5V)                                |
|   3    |   V0    | Contrast adjustment                               |
|   4    |   RS    | Register Select (0 for command, 1 for data)       |
|   5    |   RW    | Read/Write (0 for write, 1 for read)              |
|   6    |   E     | Enable pin (trigger)                              |
| 7-14   |  D0-D7  | Data pins (for 4/8-bit mode)                      |
|   15   |  LED+   | LED backlight anode                               |
|   16   |  LED-   | LED backlight cathode                             |

</div>

---

# 🖥️ **Installation & Usage**

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
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_4B_8051_Ckt.png" alt="4-bit LCD Circuit" width="70%">
</p>

Each component is connected to the microcontroller's input pins, while resistors ensure proper current control throughout the circuit.

---
