import tkinter as tk
from tkinter import messagebox
import sympy as sp
from sympy.parsing.sympy_parser import parse_expr, standard_transformations, implicit_multiplication_application
x, a, b, c = sp.symbols('x a b c')

def show_table():
    table_window = tk.Toplevel(root)
    table_window.title("Таблица производных и правила")
    table_window.geometry("450x400")
    table_window.config(bg="#f0f0f0")

    text_area = tk.Text(table_window, wrap=tk.WORD, font=("Courier New", 11), bg="#ffffff", fg="#333333")
    text_area.pack(expand=True, fill=tk.BOTH, padx=10, pady=10)

    content = """=== ТАБЛИЦА ПРОИЗВОДНЫХ ===
C             -> 0
x^n           -> n*x^(n-1)
e^x (exp(x))  -> e^x
sin(x)        -> cos(x)
cos(x)        -> -sin(x)
ln(x)         -> 1/x
sqrt(x)       -> 1/(2*sqrt(x))
tan(x)        -> 1/cos(x)^2

=== ПРАВИЛА ДИФФЕРЕНЦИРОВАНИЯ ===
(u + v)' = u' + v'
(u * v)' = u'v + uv'
(u / v)' = (u'v - uv') / v^2
(u^n)' = n*u^(n-1)*u'
"""
    text_area.insert(tk.END, content)
    text_area.config(state=tk.DISABLED)


def calculate():
    user_input = entry_func.get().strip()

    if not user_input:
        messagebox.showwarning("Предупреждение", "Введите функцию!")
        return

    try:
        functions = {
            'x': x,
            'a': a,
            'b': b,
            'c': c,
            'sin': sp.sin,
            'cos': sp.cos,
            'tan': sp.tan,
            'ln': sp.log,
            'log': sp.log,
            'sqrt': sp.sqrt,
            'exp': sp.exp,
            'e': sp.E
        }

        transformations = standard_transformations + (implicit_multiplication_application,)

        expression = parse_expr(
            user_input.replace('^', '**'),
            local_dict=functions,
            transformations=transformations
        )

        result = sp.diff(expression, x)

        expr_str = str(expression).replace('**', '^')
        result_str = str(result).replace('**', '^')


        text_original.config(state=tk.NORMAL)
        text_original.delete("1.0", tk.END)
        text_original.insert(tk.END, expr_str)
        text_original.config(state=tk.DISABLED)

        text_derivative.config(state=tk.NORMAL)
        text_derivative.delete("1.0", tk.END)
        text_derivative.insert(tk.END, result_str)
        text_derivative.config(state=tk.DISABLED)

    except Exception as error:
        messagebox.showerror("Ошибка", f"Не удалось разобрать выражение:\n{error}")

root = tk.Tk()
root.title("Калькулятор производных")
root.geometry("550x500")
root.config(bg="#f7f9fc")

title_label = tk.Label(root, text="Калькулятор производных", font=("Arial", 16, "bold"), bg="#f7f9fc", fg="#2c3e50")
title_label.pack(pady=10)

frame_input = tk.Frame(root, bg="#f7f9fc")
frame_input.pack(pady=5, padx=20, fill=tk.X)

label_input = tk.Label(frame_input, text="Введите функцию:", font=("Arial", 10),
                       bg="#f7f9fc")
label_input.pack(anchor="w", pady=2)

entry_func = tk.Entry(frame_input, font=("Arial", 12), relief=tk.SOLID, bd=1)
entry_func.pack(fill=tk.X, pady=5, ipady=3)

frame_buttons = tk.Frame(root, bg="#f7f9fc")
frame_buttons.pack(pady=10)

btn_calc = tk.Button(frame_buttons, text="Вычислить производную", font=("Arial", 10, "bold"), bg="#000000", fg="white",
                     padx=10, pady=5, command=calculate)
btn_calc.grid(row=0, column=0, padx=5)

btn_table = tk.Button(frame_buttons, text="Таблица производных", font=("Arial", 10), bg="#2196F3", fg="white", padx=10,
                      pady=5, command=show_table)
btn_table.grid(row=0, column=1, padx=5)

frame_output = tk.Frame(root, bg="#f7f9fc")
frame_output.pack(pady=5, padx=20, fill=tk.BOTH, expand=True)

label_orig = tk.Label(frame_output, text="Исходная функция:", font=("Arial", 10, "bold"), bg="#f7f9fc")
label_orig.pack(anchor="w")

text_original = tk.Text(frame_output, height=3, font=("Courier New", 11), bg="#ffffff", fg="#333333", relief=tk.SOLID,
                        bd=1)
text_original.pack(fill=tk.X, pady=5)
text_original.config(state=tk.DISABLED)

label_deriv = tk.Label(frame_output, text="Производная:", font=("Arial", 10, "bold"), bg="#f7f9fc")
label_deriv.pack(anchor="w", pady=(5, 0))

text_derivative = tk.Text(frame_output, height=4, font=("Courier New", 11), bg="#ffffff", fg="#2e7d32", relief=tk.SOLID,
                          bd=1)
text_derivative.pack(fill=tk.X, pady=5)
text_derivative.config(state=tk.DISABLED)

root.mainloop()
