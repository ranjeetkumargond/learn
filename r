import tkinter as tk
from tkinter import ttk
win=tk.Tk()
win.title("frame_label")

#****************************************label_frames***********************************************************

label_frame=ttk.LabelFrame(win,text="ranjeet kumar")
label_frame.grid(row=0,column=0)

#***************************************labels******************************************************************

l_data=["name","age","email","phone"]
for i in range(len(l_data)):
  current_var=l_data[i]+"_label"
  current_var=ttk.Label(label_frame,text=f"Enter Your {l_data[i]} :")
  current_var.grid(row=i,column=0,sticky=tk.W)

#*************************************entrry_boxes*********************************************************************

e_data={
  "name":tk.StringVar(),
  "age":tk.StringVar(),
  "email":tk.StringVar(),
  "phone":tk.StringVar(),
  }
count=0
for i in e_data:
    current_var=i+"_box"
    current_var=ttk.Entry(label_frame,width=15,textvariable=e_data[i])
    current_var.grid(row=count,column=1)
    if i=="name":
        current_var.focus()
    
    count+=1

#****************************************functionalyties***************************************************************

def action():
    for i in e_data:
        print(e_data[i].get())


#**********************************buttons*****************************************************************************

submit=ttk.Button(win,text="SUBMIT",command=action)
submit.grid(row=1,columnspan=3)


#***********************************end**********************************************************************************
for child in label_frame.winfo_children():
    child.grid_configure(padx=4,pady=4)


win.mainloop()
#TYT









