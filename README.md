# ⚙️ **8051 LCD**

LCD and Keypad Interfacing with the **8051** Microcontroller (Assembly Code and Proteus Simulation).

<p align="center">
  <img src="https://user-images.githubusercontent.com/78910261/196782553-d76d9e44-f03c-4bfc-af3d-b1f85cf36e33.png" alt="AT89C51 Calculator" width="70%">
</p>

Using a 1602 LCD with microcontrollers like the 8051 (or any other microcontroller) and simulating the circuit in Proteus requires several steps. The 1602 LCD is a common 16x2 character display used in embedded systems to display information.

> **Note**: The resistor network RN1 in the Proteus schematic is needed in the simulator (while it is PORT "0") only, but not on real hardware. It has been successfully tested without external resistor pull-ups.

---

## 📖 **Overview**

This project demonstrates the **interfacing of an LCD and a 4x4 keypad** with the **[AT89C51](https://www.atmel.com/products/microcontrollers/8051.aspx)** Microcontroller, part of the **[8051 MCU](https://en.wikipedia.org/wiki/Intel_MCS-51)** family. This setup allows for input and output operations, making it a practical example for educational purposes and embedded systems applications.

The program is written in **[Assembly language](https://en.wikipedia.org/wiki/Assembly_language)**, optimized for efficiency and performance, and the circuit is simulated using **[Proteus](https://www.labcenter.com/)** (Version 8.9). This repository includes:
- **[Assembly Code](https://en.wikipedia.org/wiki/Assembly_language)** for LCD and keypad interfacing
- **Precompiled HEX File** for easy microcontroller programming
- **[Proteus Simulation Circuit](https://www.labcenter.com/)** demonstrating the project functionality

The project has been successfully tested on both simulation and real hardware setups, ensuring reliability and accuracy.

---

## 🔑 **Keywords**

**[AT89C51 Microcontroller](https://www.atmel.com/products/microcontrollers/8051.aspx)** | 
**[8051](https://en.wikipedia.org/wiki/Intel_MCS-51)** | 
**[Assembly Language](https://en.wikipedia.org/wiki/Assembly_language)** | 
**[Simulation](https://www.labcenter.com/)** | 
**[Proteus](https://www.labcenter.com/)** | 
**[Microcontroller Programming](https://en.wikipedia.org/wiki/Microcontroller)** | 
**[LCD Interfacing](https://en.wikipedia.org/wiki/Liquid-crystal_display)** | 
**[Keypad Interfacing](https://en.wikipedia.org/wiki/Keypad)**

---

## ⚙️ **Key Features**

<div align="center">

| Feature                      | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📟 **LCD Display**              | Displays user input and output results                                     |
| ⌨️ **4x4 Keypad Input**         | User-friendly interface for data entry                                      |
| 🖥️ **Proteus Simulation**      | Ready-to-use simulation circuit compatible with Proteus 8.9                |
| 💾 **Assembly Programming**    | Optimized assembly code for efficient execution on the AT89C51              |
| 🛠️ **Real Hardware Support**   | Successfully tested on actual hardware for reliable performance              |

</div>

---

## 📦 **Contents**

<div align="center">

| File                          | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `AT89C51_LCD_Keypad.asm`       | Assembly source code for the AT89C51 microcontroller                        |
| `AT89C51_LCD_Keypad.hex`       | Precompiled HEX file for direct microcontroller upload                      |
| `Proteus_Simulation.pdsprj`    | Proteus Design Suite simulation file                                        |
| **Screenshots**                | Visual demonstrations from the Proteus simulation                          |

</div>

---

## 🛠️ **Hardware & Circuit Information**

<div align="center">

| Hardware Component             | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| **AT89C51 Microcontroller**     | Central unit managing input and output operations                          |
| **LCD**                         | 16x2 LCD for displaying data and results                                   |
| **4x4 Keypad**                 | Input interface for entering commands and numbers                          |
| **Transistors (e.g., NPN)**     | Used to interface the microcontroller with the LCD and other components     |
| **Resistors**                   | Current-limiting resistors to protect components from overcurrent          |
| **Power Supply**                | A 5V DC power supply for the microcontroller and LCD circuit               |

</div>

---

### **Circuit Explanation**:

Each component, including the keypad, is connected to the microcontroller's input pins, while resistors are used throughout the circuit to ensure proper current control.

---


## 🖥️ **1602 LCD Overview**

<p align="center">

![1602LCD_1](https://github.com/user-attachments/assets/cd65457c-c174-49bc-948d-1a0cfffd286f)

<p/>

The **1602 alphanumeric LCD** is a type of liquid crystal display that can show alphanumeric characters. It is one of the most common character-based LCD modules used in embedded systems for displaying text and simple symbols. The "1602" designation refers to its **16 columns and 2 rows**, meaning it can display **16 characters per line** and a total of **32 characters** across its two lines.

### Key Features of the 1602 LCD:
1. **Display Size**: It can display up to 32 characters (16 characters on each row).
2. **Character Set**: It supports a 5x8 dot matrix per character, allowing for the display of basic letters, numbers, punctuation marks, and some special characters.
3. **Backlight**: Many models come with an optional LED backlight, making the display readable in low-light conditions.
4. **Contrast Adjustment**: The contrast of the characters on the LCD can be adjusted using a potentiometer connected to the V0 pin.
5. **4-bit or 8-bit Communication**: It can operate in either 4-bit or 8-bit data mode, meaning it can communicate with a microcontroller using 4 or 8 data lines.

---

### **Pin Configuration of the 1602 LCD**

<div align="center">

| **Pin** | **Name** | **Description**                                |
|:------:|:------:|:-------------------------------------------------:|
|   1    |   VSS   |              Ground (GND)                        |
|   2    |   VDD   |          Power supply (+5V)                      |
|   3    |   V0    | Contrast adjustment (via potentiometer)          |
|   4    |   RS    | Register Select (0 for command, 1 for data)      |
|   5    |   RW    | Read/Write (0 for write, 1 for read)             |
|   6    |   E     | Enable pin (trigger)                             |
| 7-14   |  D0-D7  | Data pins (for 4/8-bit mode)                     |
|   15   |  LED+   | LED backlight anode (+5V)                        |
|   16   |  LED-   | LED backlight cathode (GND)                      |

</div>

---

### How It Works:
- **Data/Command Modes**: The 1602 LCD operates in two modes:
  - **Command Mode**: Used to send commands to the LCD, such as clearing the screen, setting the cursor position, etc. This is controlled by setting the **RS pin** low (RS = 0).
  - **Data Mode**: Used to send characters to be displayed on the screen. This is controlled by setting the **RS pin** high (RS = 1).
  
- **4-bit vs 8-bit Communication**:
  - In **8-bit mode**, all 8 data pins (D0-D7) are used to send data or commands.
  - In **4-bit mode**, only the upper 4 data pins (D4-D7) are used, and data is sent in two cycles (high nibble first, then low nibble).

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
   Assemble the hardware according to the provided circuit diagram, power it on, and verify functionality by using the keypad to enter data.

---

## 🔗 **Additional Information**

### **LCD Display**:
The **16x2 LCD** displays the data processed by the microcontroller, providing immediate feedback on user inputs.

### **Keypad Functionality**:
- **Number Keys**: Input numeric values through the keypad and view them on the LCD.
- **Function Keys**: Specific
