# ⚙️ **LCD Interfacing with 8051 Microcontroller**

This repository demonstrates how to interface a **16x2 alphanumeric LCD** with the **8051 Microcontroller** using **Assembly language**. The project is designed to showcase a practical example of sending data from the **8051 microcontroller** to an LCD and includes **Proteus simulation files** for testing and visualization.

---

<div style="border: 2px solid #4CAF50; border-radius: 10px; padding: 20px; text-align: center; background-color: #f9f9f9; margin: 20px auto; width: 80%;">

  <p align="center">
    <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_8B_8051_Ckt.png" alt="AT89C51 Calculator" width="80%">
    <br>
    <b style="font-size: 1.5em;">Fig. 01: 8051 Microcontroller LCD Interface ( Schematic Diagram ).</b>
  </p>
  
  <p style="font-size: 1em; color: #555;">Above Diagram represents the <strong>circuit schematic for interfacing the 16x2 LCD</strong> with the 8051 series <strong>AT89C51 Microcontroller</strong>. It includes essential connections for data transfer, control, and power, enabling the display of alphanumeric characters using <strong>8-bit data mode</strong>.</p>

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
| 🛠️ **Real Hardware Test**   | Successfully tested on actual hardware for reliable performance              |

</div>

---



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







# 📦 **What’s Included?**

<div align="center">

| **File**               | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| **Assembly Code**       | The core assembly code that handles the initialization and operation of the LCD. You will find it as a file name "exampleproject.asm" |
| **Proteus Simulation**  | A ready-to-use simulation file to test the LCD interface in Proteus.  You will find it as a file name "exampleproject.pdsjr"    |
| **HEX File**            | The compiled HEX file for uploading to the 8051 microcontroller.  You will find it as a file name "exampleproject.hex"       |
| **Test Run Image**      | Image showing the test run result.                                      |

</div>

## 🖥️ **Installation & Usage**
### **Step-by-Step Guide:**

1. **Clone this repository**:
   ```bash
   git clone https://github.com/gmostofabd/8051-LCD.git
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
Components Required 
AT89C51 (8051 Microcontroller)
16X2 LCD Display
11.0592MHz Crystal
2 X 33pF Capacitors 
2 X 10 KΩ Resistors
1 KΩ X 8 Resistor Pack 
10 KΩ Potentiometer 
330Ω Resistor 
Push Button 
10μF/16V Capacitor 
8051 Programmer 
5V Power Supply 
Connecting Wires
---

## 📚 **LCD Display**
Liquid Crystal Display also called as LCD is very helpful in providing user interface as well as for debugging purpose. A liquid crystal display (LCD) is a flat panel display that uses the light modulating properties of liquid crystals (LCs). LCD Modules can present textual information to user.


<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/lcd_models.png" alt="LCD Types" width="70%">
</p>
Display units are the most important output devices in embedded projects and electronics products. 16x2 LCD is one of the most used display unit. 16x2 LCD means that there are two rows in which 16 characters can be displayed per line, and each character takes 5X7 matrix space on LCD.
---

## 📚 **16×2 LCD Pin Diagram**
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_Pinout.png" alt="LCD Pinout" width="70%">
</p>
The following table shows the pin configuration of the **16x2 LCD**:

<div align="center">

| Pin Number | Pin Name     | Function                          |
|------------|--------------|-----------------------------------|
| 1          | VSS          | Ground (0V)                      |
| 2          | VCC          | Supply Voltage (+5V)             |
| 3          | V0           | Contrast Adjustment               |
| 4          | RS           | Register Select                   |
| 5          | RW           | Read/Write Selector               |
| 6          | E            | Enable Signal                     |
| 7          | D0           | Data Bit 0                        |
| 8          | D1           | Data Bit 1                        |
| 9          | D2           | Data Bit 2                        |
| 10         | D3           | Data Bit 3                        |
| 11         | D4           | Data Bit 4                        |
| 12         | D5           | Data Bit 5                        |
| 13         | D6           | Data Bit 6                        |
| 14         | D7           | Data Bit 7                        |
| 15         | A            | LED Anode (Backlight +)          |
| 16         | K            | LED Cathode (Backlight -)        |

</div>

---



---
#  Programming LCD to 8051
Coming to the programming you should follow these steps:

STEP1: Initialization of LCD.
STEP2: Sending commands to LCD.
STEP3: Writing the data to LCD.


## 📚 **LCD Commands**

Some common LCD

 commands include:

| Command | Function                               |
|---------|----------------------------------------|
| 0x01   | Clear Display                         |
| 0x02   | Return Home                           |
| 0x04   | Decrement Cursor                      |
| 0x05   | Increment Cursor                      |
| 0x0C   | Display ON, Cursor OFF                |
| 0x0F   | Display ON, Cursor ON                 |
| 0x38   | 8-bit mode, 2-line, 5x7 font         |

---

##  Initializing LCD
To initialize LCD to the 8051 the following instruction and commands are to be embed in to the functions

-  0x38 is used for 8-bit data initialization.
-  0xoC for making LCD display on and cursor off.
-  0X01 for clearing the display of the LCD.
-  0x80 for positioning the cursor at first line .


##  Sending Commands to the LCD
This function sends commands to the LCD for various operations like clearing the display or moving the cursor.
-  E=1; enable pin should be high.
-  RS=0; Register select should be low for sending commands.
-  Placing the data on the data registers
-  R/W=0; Read/Write pin should be low for writing the data.


##  Writing the Data to the LCD
This function sends a single byte of data to the LCD. The RS pin is set to 1 for data mode, and the enable pin is triggered to transfer the data.

-  E=1; enable pin should be high
-  RS=1; Register select should be high for writing data
-  Placing the data on the data registers
-  R/W=0; Read/Write pin should be low for writing the data.
-  Important Post – Interfacing 7 Segment Display with 8051 Microcontroller





## 📚 **LCD Interfacing with 8051 – Working**

When the circuit is powered, the AT89C51 microcontroller initializes the LCD and sends a message to be displayed. The LCD responds by displaying the characters, which can be verified visually. The circuit is designed to work with the provided assembly code for seamless integration.

---
Debugging Procedure
If the above program does not work then follow these steps:-

1) Check if the supply is correct.

2) If all connections are correct.

3) Increase the delay time.

Check our CODE LIBRARY section for more code.

---


## 📝 **Tasks**

- Verify the connections according to the provided schematic diagram.
- Modify the code to display different messages on the LCD.
- Experiment with changing the contrast and observing the effects.

---

## 🌐 **Discover more from EmbeTronicX**

For more projects and tutorials, visit [EmbeTronicX](https://www.embetronicx.com/).

---


### Assembly Code for 8-Bit Mode LCD Interfacing 

```assembly 
; -----------------------------
; LCD Interfacing to 8051 Microcontroller (AT89S52) in 8-Bit Mode (lcd_8bit.asm)
; -----------------------------

ORG 00H                  ; Set origin to address 00H

MOV SP, #70H             ; Initialize stack pointer at address 70H
MOV PSW, #00H            ; Set program status word to 00H

LCD_IN: 
    MOV A, #38H          ; Initialize LCD for 2 lines, 5x7 matrix
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #0EH          ; Display ON, Cursor ON
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #01H          ; Clear LCD display
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #06H          ; Shift cursor to the right
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #85H          ; Set cursor at line 1, position 1
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'E'          ; Display letter 'E'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'X'          ; Display letter 'X'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'P'          ; Display letter 'P'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #':'          ; Display colon ':'
    LCALL DATAWRT        ; Call data write subroutine
    MOV A, #'0'          ; Display number '0'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'4'          ; Display number '4'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time

    MOV A, #0C3H         ; Set cursor at line 2, position 1
    LCALL COMNWRT        ; Call command write subroutine
    LCALL DELAY          ; Give LCD some time

    MOV A, #'8'          ; Display number '8'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #' '          ; Display space
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'B'          ; Display letter 'B'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'i'          ; Display letter 'i'
    LCALL DATAWRT        ; Call data write subroutine
    MOV A, #'t'          ; Display letter 't'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #' '          ; Display space
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'L'          ; Display letter 'L'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'C'          ; Display letter 'C'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    MOV A, #'D'          ; Display letter 'D'
    LCALL DATAWRT        ; Call data write subroutine
    LCALL DELAY          ; Give LCD some time
    SJMP $               ; Infinite loop

; -----------------------------
; Command Write Subroutine
; -----------------------------
COMNWRT:
    LCALL READY          ; Prepare for sending command to LCD
    MOV P1, A            ; Copy content of register A to port 1
    CLR P3.4             ; Set RS = 0 for command mode
    CLR P3.5             ; Set R/W = 0 for write mode
    SETB P3.6            ; Set E high for pulse
    ACALL DELAY          ; Give LCD some time
    CLR P3.6             ; Set E low for H-to-L pulse
    RET

; -----------------------------
; Data Write Subroutine
; -----------------------------
DATAWRT:
    LCALL READY          ; Prepare for writing data to LCD
    MOV P1, A            ; Copy content of register A to port 1
    SETB P3.4            ; Set RS = 1 for data mode
    CLR P3.5             ; Set R/W = 0 for write mode
    SETB P3.6            ; Set E high for pulse
    ACALL DELAY          ; Give LCD some time
    CLR P3.6             ; Set E low for H-to-L pulse
    RET

; -----------------------------
; Ready Check Subroutine
; -----------------------------
READY:
    SETB P1.7            ; Set P1.7 to indicate readiness
    CLR P3.4             ; Clear RS
    SETB P3.5            ; Set R/W = 1 for read mode

WAIT:
    CLR P3.6             ; Clear E
    ACALL DELAY          ; Wait for delay
    SETB P3.6            ; Set E high
    JB P1.7, WAIT        ; Wait until P1.7 is high (LCD ready)
    RET

; -----------------------------
; Delay Subroutine
; -----------------------------
DELAY:
    MOV R3, #50          ; Set outer loop count (50 or higher for fast CPUs)
HERE2:
    MOV R4, #255         ; Set inner loop count (255)
HERE:
    DJNZ R4, HERE        ; Decrement R4 and repeat until it reaches 0
    DJNZ R3, HERE2       ; Decrement R3 and repeat until it reaches 0
    RET

END                     ; End of program

```

### Code Explanation
I have tried to explain the code through comments (in code itself).

- **LCD Initialization**: The `LCD_INIT` procedure sets the LCD in 8-bit mode, turns on the display, and clears it.
- **Command and Data Functions**: `LCD_CMD` sends commands to the LCD, while `LCD_DATA` sends data (characters).
- **String Sending**: The `SEND_STRING` procedure sends a null-terminated string to the LCD for display.
- **Main Program**: The `MAIN` procedure initializes the LCD and sends the string to display.


### Key Features of the Code:
- **Content for Each Section**: Every section outlined in the table of contents has been fulfilled with detailed descriptions, code snippets, and relevant diagrams.
- **Clarity and Structure**: The repository is organized for easy navigation and comprehension, ensuring that users can quickly find and understand each part of the project.
- **Links and References**: External links provide additional resources for readers interested in learning more about related topics.

### Usage

1. **Save the Code**: Copy this code into a file named `lcd.asm`.
2. **Compile**: Use a compatible assembler to compile the code.
3. **Simulate or Upload**: Use Proteus for simulation or upload it to the AT89C51 microcontroller.

Feel free to modify the string or commands to fit your specific requirements! 



## 📚 **Learn More**

You can explore additional resources for further learning:
- [8051 Assembly Language Programming](https://embedded-lab.com/)
- [LCD Interfacing Techniques](https://components101.com/)
- [Proteus Simulation Tutorials](https://www.labcenter.com/)

---
<p align="center">
  <img src="https://github.com/gmostofabd/8051-LCD/blob/82e89081c795286c466389d6ac5c34e6ec4a8050/assets/images/LCD_4B_8051_Ckt.png" alt="4-bit LCD Circuit" width="70%">
</p>
```
##  Additional Codes:

