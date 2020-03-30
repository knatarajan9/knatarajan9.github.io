(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     36379,        919]
NotebookOptionsPosition[     36782,        915]
NotebookOutlinePosition[     37124,        930]
CellTagsIndexPosition[     37081,        927]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Manipulate", "[", "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"xeps", "=", 
     RowBox[{"-", "0.01"}]}], ";", 
    RowBox[{"\[Delta]Chop", "=", "0.001"}], ";", "\n", 
    RowBox[{"xs", "=", 
     RowBox[{"(", 
      RowBox[{"0.875", "-", "0.735"}], ")"}]}], ";", 
    RowBox[{"xo", "=", 
     RowBox[{".735", "+", "xeps"}]}], ";", "\n", 
    RowBox[{"ys", "=", 
     RowBox[{"(", 
      RowBox[{"0.81", "-", "0.52"}], ")"}]}], ";", 
    RowBox[{"yo", "=", "0.52"}], ";", "\n", 
    RowBox[{
     RowBox[{"rsx", "[", "x_", "]"}], ":=", 
     RowBox[{"xo", "+", 
      RowBox[{"x", "*", "xs"}]}]}], ";", "\n", 
    RowBox[{
     RowBox[{"rsy", "[", "y_", "]"}], ":=", 
     RowBox[{"yo", "+", 
      RowBox[{"y", "*", "ys"}]}]}], ";", "\n", 
    RowBox[{
     RowBox[{"rs", "[", 
      RowBox[{"{", 
       RowBox[{"x_", ",", " ", "y_"}], "}"}], "]"}], ":=", 
     RowBox[{"Scaled", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"rsx", "[", "x", "]"}], ",", 
        RowBox[{"rsy", "[", "y", "]"}]}], "}"}], "]"}]}], ";", "\n", 
    RowBox[{"CSet", "=", 
     RowBox[{"{", "}"}]}], ";", "\n", 
    RowBox[{"rocpts", "=", "\n", 
     RowBox[{"Table", "[", "\n", 
      RowBox[{
       RowBox[{"{", "\n", 
        RowBox[{
         RowBox[{"With", "[", "\n", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"z", "=", 
             RowBox[{"CDF", "[", 
              RowBox[{
               RowBox[{"NormalDistribution", "[", 
                RowBox[{"20.0", ",", "5"}], "]"}], ",", "x"}], "]"}]}], "}"}],
            ",", 
           RowBox[{"If", "[", 
            RowBox[{"FPR", ",", 
             RowBox[{"1.0", "-", "z"}], ",", "z"}], "]"}]}], "]"}], ",", 
         RowBox[{"1.0", "-", 
          RowBox[{"CDF", "[", 
           RowBox[{
            RowBox[{"NormalDistribution", "[", 
             RowBox[{"\[Mu]", ",", "6.0"}], "]"}], ",", "x"}], "]"}]}]}], 
        "}"}], ",", "\n", 
       RowBox[{"{", 
        RowBox[{"x", ",", "5", ",", "70", ",", "1"}], "}"}]}], "]"}]}], ";", 
    "\n", 
    RowBox[{"a", "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[Mu]", "-", "20.0"}], ")"}], "/", "6"}]}], ";", 
    RowBox[{"b", "=", 
     RowBox[{"5", "/", "6"}]}], ";", "\n", 
    RowBox[{"auc", "=", 
     RowBox[{"CDF", "[", 
      RowBox[{
       RowBox[{"NormalDistribution", "[", 
        RowBox[{"0", ",", "1"}], "]"}], ",", 
       RowBox[{"a", "/", 
        RowBox[{"Sqrt", "[", 
         RowBox[{"1", "+", 
          RowBox[{"b", "^", "2"}]}], "]"}]}]}], "]"}]}], ";", "\n", 
    RowBox[{"Map", "[", 
     RowBox[{"rs", ",", "rocpts"}], "]"}], ";", "\n", 
    RowBox[{"color1", "=", 
     RowBox[{"RGBColor", "[", 
      RowBox[{"0.33", ",", " ", "0.6", ",", " ", ".7"}], "]"}]}], ";", "\n", 
    RowBox[{"color2", "=", 
     RowBox[{"RGBColor", "[", 
      RowBox[{"0.48", ",", " ", "0.11", ",", " ", ".56"}], "]"}]}], ";", "\n", 
    RowBox[{"g1", "=", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"PDF", "[", 
        RowBox[{
         RowBox[{"NormalDistribution", "[", 
          RowBox[{"20", ",", "5"}], "]"}], ",", "x"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "40"}], "}"}], ",", 
       RowBox[{"Axes", "->", 
        RowBox[{"{", 
         RowBox[{"True", ",", "False"}], "}"}]}], ",", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"{", 
         RowBox[{"Black", ",", 
          RowBox[{"Thickness", "[", "Medium", "]"}]}], "}"}]}], ",", 
       RowBox[{"PlotRange", "->", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "85"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}]}], "]"}]}], ";", "\n", 
    RowBox[{"g2", "=", 
     RowBox[{"If", "[", 
      RowBox[{"FPR", ",", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"NormalDistribution", "[", 
            RowBox[{"20", ",", "5"}], "]"}], ",", "x"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "\[DoubleStruckCapitalC]", ",", "40"}], "}"}], 
         ",", 
         RowBox[{"Axes", "->", 
          RowBox[{"{", 
           RowBox[{"True", ",", "False"}], "}"}]}], ",", 
         RowBox[{"PlotRange", "->", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "85"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", "\n", 
         RowBox[{"Filling", "->", "Axis"}], ",", 
         RowBox[{"FillingStyle", "->", "color1"}]}], "]"}], ",", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"NormalDistribution", "[", 
            RowBox[{"20", ",", "5"}], "]"}], ",", "x"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "\[DoubleStruckCapitalC]"}], "}"}], ",", 
         RowBox[{"Axes", "->", 
          RowBox[{"{", 
           RowBox[{"True", ",", "False"}], "}"}]}], ",", 
         RowBox[{"PlotRange", "->", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "85"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", "\n", 
         RowBox[{"Filling", "->", "Axis"}], ",", 
         RowBox[{"FillingStyle", "->", "color1"}]}], "]"}]}], "]"}]}], ";", 
    "\n", 
    RowBox[{"g3", "=", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"PDF", "[", 
        RowBox[{
         RowBox[{"NormalDistribution", "[", 
          RowBox[{"\[Mu]", ",", "6.0"}], "]"}], ",", "x"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "70"}], "}"}], ",", 
       RowBox[{"Axes", "->", 
        RowBox[{"{", 
         RowBox[{"True", ",", "False"}], "}"}]}], ",", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"{", 
         RowBox[{"Black", ",", 
          RowBox[{"Thickness", "[", "Medium", "]"}]}], "}"}]}], ",", 
       RowBox[{"PlotRange", "->", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "85"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"{", 
         RowBox[{"Black", ",", 
          RowBox[{"Thickness", "[", "Medium", "]"}]}], "}"}]}]}], "\n", 
      "]"}]}], ";", "\n", 
    RowBox[{"g4", "=", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"PDF", "[", 
        RowBox[{
         RowBox[{"NormalDistribution", "[", 
          RowBox[{"\[Mu]", ",", "6.0"}], "]"}], ",", "x"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "\[DoubleStruckCapitalC]", ",", "70"}], "}"}], ",", 
       RowBox[{"Axes", "->", 
        RowBox[{"{", 
         RowBox[{"True", ",", "False"}], "}"}]}], ",", 
       RowBox[{"PlotRange", "->", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "85"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", 
       RowBox[{"Filling", "->", "Axis"}], ",", 
       RowBox[{"FillingStyle", "->", "color2"}], ",", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"{", 
         RowBox[{"Black", ",", 
          RowBox[{"Thickness", "[", "Medium", "]"}]}], "}"}]}]}], "]"}]}], 
    ";", "\n", 
    RowBox[{"Z1", "=", 
     RowBox[{"z", "/.", 
      RowBox[{"First", "[", 
       RowBox[{"(", 
        RowBox[{"FindRoot", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"PDF", "[", 
            RowBox[{
             RowBox[{"NormalDistribution", "[", 
              RowBox[{"\[Mu]", ",", "6.`"}], "]"}], ",", "z"}], "]"}], "==", 
           RowBox[{"PDF", "[", 
            RowBox[{
             RowBox[{"NormalDistribution", "[", 
              RowBox[{"20", ",", "5"}], "]"}], ",", "z"}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"z", ",", 
            RowBox[{"20", "+", "3", "+", 
             RowBox[{
              RowBox[{"Abs", "[", 
               RowBox[{"\[Mu]", "-", "20"}], "]"}], "/", "2"}]}]}], "}"}]}], 
         "]"}], ")"}], "]"}]}]}], ";", "\n", 
    RowBox[{"g5", "=", 
     RowBox[{"If", "[", 
      RowBox[{"FPR", ",", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"Z1", ">=", " ", "\[DoubleStruckCapitalC]"}], ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"PDF", "[", 
            RowBox[{
             RowBox[{"NormalDistribution", "[", 
              RowBox[{"\[Mu]", ",", "6.0"}], "]"}], ",", "x"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "\[DoubleStruckCapitalC]", ",", "Z1"}], "}"}], 
           ",", 
           RowBox[{"Axes", "->", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], ",", 
           RowBox[{"PlotRange", "->", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "85"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Filling", "->", "Axis"}], ",", 
           RowBox[{"FillingStyle", "->", 
            RowBox[{"Blend", "[", 
             RowBox[{"{", 
              RowBox[{"color2", ",", "color1"}], "}"}], "]"}]}]}], "]"}], ",", 
         RowBox[{"{", "}"}]}], "]"}], ",", 
       RowBox[{"{", "}"}]}], "]"}]}], ";", "\n", 
    RowBox[{"g6", "=", 
     RowBox[{"If", "[", 
      RowBox[{"FPR", ",", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"NormalDistribution", "[", 
            RowBox[{"20", ",", "5"}], "]"}], ",", "x"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"Max", "[", 
            RowBox[{"Z1", ",", "\[DoubleStruckCapitalC]"}], "]"}], ",", 
           "70"}], "}"}], ",", 
         RowBox[{"Axes", "->", 
          RowBox[{"{", 
           RowBox[{"True", ",", "False"}], "}"}]}], ",", 
         RowBox[{"PlotRange", "->", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "85"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0.09"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"Filling", "->", "Axis"}], ",", 
         RowBox[{"FillingStyle", "->", 
          RowBox[{"Blend", "[", 
           RowBox[{"{", 
            RowBox[{"color2", ",", "color1"}], "}"}], "]"}]}]}], "]"}], ",", 
       RowBox[{"{", "}"}]}], "]"}]}], ";", "\n", 
    RowBox[{"labelFPR", "=", 
     RowBox[{"Style", "[", 
      RowBox[{
       RowBox[{"StringForm", "[", 
        RowBox[{"\"\<FPR = ``\>\"", ",", 
         RowBox[{"NumberForm", "[", 
          RowBox[{
           RowBox[{"fpr", "=", 
            RowBox[{"Chop", "[", 
             RowBox[{
              RowBox[{"1.0", "-", 
               RowBox[{"CDF", "[", 
                RowBox[{
                 RowBox[{"NormalDistribution", "[", 
                  RowBox[{"20.0", ",", "5"}], "]"}], ",", 
                 "\[DoubleStruckCapitalC]"}], "]"}]}], ",", "\[Delta]Chop"}], 
             "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "2"}], "}"}]}], "]"}]}], "]"}], ",", 
       "\"\<Label\>\"", ",", "12", ",", "Black"}], "]"}]}], ";", "\n", 
    RowBox[{"labelSpecificity", "=", 
     RowBox[{"Style", "[", 
      RowBox[{
       RowBox[{"StringForm", "[", 
        RowBox[{"\"\<Specificity = ``\>\"", ",", 
         RowBox[{"NumberForm", "[", 
          RowBox[{
           RowBox[{"specificity", "=", 
            RowBox[{"Chop", "[", 
             RowBox[{
              RowBox[{"CDF", "[", 
               RowBox[{
                RowBox[{"NormalDistribution", "[", 
                 RowBox[{"20.0", ",", "5"}], "]"}], ",", 
                "\[DoubleStruckCapitalC]"}], "]"}], ",", "\[Delta]Chop"}], 
             "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "2"}], "}"}]}], "]"}]}], "]"}], ",", 
       "\"\<Label\>\"", ",", "12", ",", "Black"}], "]"}]}], ";", "\n", 
    RowBox[{"labelTPR", "=", 
     RowBox[{"Style", "[", 
      RowBox[{
       RowBox[{"StringForm", "[", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
          "FPR", ",", "\"\<TPR = ``\>\"", ",", "\"\<Sensitivity = ``\>\""}], 
          "]"}], ",", 
         RowBox[{"NumberForm", "[", 
          RowBox[{
           RowBox[{"tpr", "=", 
            RowBox[{"Chop", "[", "\n", 
             RowBox[{
              RowBox[{"1.0", "-", 
               RowBox[{"CDF", "[", 
                RowBox[{
                 RowBox[{"NormalDistribution", "[", 
                  RowBox[{"\[Mu]", ",", "6.0"}], "]"}], ",", 
                 "\[DoubleStruckCapitalC]"}], "]"}]}], ",", "\n", 
              "\[Delta]Chop"}], "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "2"}], "}"}]}], "]"}]}], "]"}], ",", 
       "\"\<Label\>\"", ",", "12", ",", "Black"}], "]"}]}], ";", "\n", 
    RowBox[{"labelAUC", "=", "\n", 
     RowBox[{"Style", "[", 
      RowBox[{
       RowBox[{"StringForm", "[", 
        RowBox[{"\"\<AUC = ``\>\"", ",", "\n", 
         RowBox[{"NumberForm", "[", 
          RowBox[{
           RowBox[{"Chop", "[", 
            RowBox[{"auc", ",", "\[Delta]Chop"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "2"}], "}"}]}], "]"}]}], "]"}], ",", 
       "\"\<Label\>\"", ",", "12", ",", "Black"}], "]"}]}], ";", "\n", 
    RowBox[{
     RowBox[{"f2", "[", "x_", "]"}], ":=", 
     RowBox[{"Style", "[", 
      RowBox[{"x", ",", "14", ",", "Bold", ",", "color1"}], "]"}]}], ";", 
    "\n", 
    RowBox[{
     RowBox[{"f1", "[", "x_", "]"}], ":=", 
     RowBox[{"Style", "[", 
      RowBox[{"x", ",", "14", ",", "Bold", ",", "color2"}], "]"}]}], ";", 
    "\n", 
    RowBox[{"pt", "=", 
     RowBox[{"If", "[", 
      RowBox[{"FPR", ",", 
       RowBox[{"rs", "[", 
        RowBox[{"{", 
         RowBox[{"fpr", ",", "tpr"}], "}"}], "]"}], ",", 
       RowBox[{"rs", "[", 
        RowBox[{"{", 
         RowBox[{"specificity", ",", "tpr"}], "}"}], "]"}]}], "]"}]}], ";", 
    "\n", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"g2", ",", "g4", ",", "g5", ",", "g6", ",", "g1", ",", "g3"}], 
       "}"}], ",", "\n", 
      RowBox[{"Axes", "->", "True"}], ",", " ", 
      RowBox[{"AxesLabel", "->", 
       RowBox[{"{", 
        RowBox[{"\"\<X\>\"", ",", " ", "\"\<probability density\>\""}], 
        "}"}]}], ",", "\n", 
      RowBox[{"Prolog", "->", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"RGBColor", "[", 
          RowBox[{".6", ",", ".73", ",", ".36"}], "]"}], ",", 
         RowBox[{"Thickness", "[", "Large", "]"}], ",", 
         RowBox[{"Line", "[", 
          RowBox[{"Map", "[", 
           RowBox[{"rs", ",", "rocpts"}], "]"}], "]"}]}], "}"}]}], ",", "\n", 
      RowBox[{"Epilog", "->", 
       RowBox[{"{", "\n", 
        RowBox[{
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"\"\<Healthy\>\"", "//", "f2"}], ",", 
           RowBox[{"{", 
            RowBox[{"8", ",", "0.04"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "6"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"\"\<Diseased\>\"", "//", "f1"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Which", "[", 
              RowBox[{
               RowBox[{"\[Mu]", "<", "23"}], ",", "40", ",", 
               RowBox[{
                RowBox[{"\[Mu]", ">=", " ", "23"}], "&&", " ", 
                RowBox[{"\[Mu]", "<", "35"}]}], ",", "50", ",", "True", ",", 
               " ", "63"}], "]"}], ",", "0.015"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "6"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{"FPR", ",", "labelFPR", ",", "labelSpecificity"}], "]"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"47", ",", "0.071"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "0"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"labelTPR", ",", 
           RowBox[{"{", 
            RowBox[{"47", ",", "0.079"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "0"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"labelAUC", ",", 
           RowBox[{"{", 
            RowBox[{"47", ",", "0.087"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "0"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"(*", " ", 
          RowBox[{"x", " ", "axis", " ", "and", " ", "label"}], " ", "*)"}], 
         "\n", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.725", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.94", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{"FPR", ",", "\"\<FPR\>\"", ",", "\"\<Specificity\>\""}], 
            "]"}], ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"0.96", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"(*", " ", 
          RowBox[{"yaxis", " ", "and", " ", "label"}], " ", "*)"}], "\n", 
         RowBox[{"Arrow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.725", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.725", "+", "xeps"}], ",", "0.95"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{"FPR", ",", "\"\<TPR\>\"", ",", "\"\<Sensitivity\>\""}], 
            "]"}], ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"0.725", "+", "xeps"}], ",", "0.97"}], "}"}], "]"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
          "y", " ", "axis", " ", "tick", " ", "and", " ", "tick", " ", 
           "label"}], " ", "*)"}], "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<1\>\"", ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.70", "+", "xeps"}], ",", "0.81"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "]"}], ",", 
         "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<0\>\"", ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.70", "+", "xeps"}], ",", "0.52"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "]"}]}], "]"}], ",", 
         "\n", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.715", "+", "xeps"}], ",", "0.81"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.725", "+", "xeps"}], ",", "0.81"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.715", "+", "xeps"}], ",", "0.52"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.725", "+", "xeps"}], ",", "0.52"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{
          "x", " ", "axis", " ", "tick", " ", "and", " ", "tick", " ", 
           "label"}], " ", "*)"}], "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<1\>\"", ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.865", "+", "xeps"}], ",", "0.4"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}]}], "]"}], ",", "\n", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<0\>\"", ",", 
           RowBox[{"Scaled", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.715", "+", "xeps"}], ",", "0.4"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}]}], "]"}]}], "]"}], ",", "\n", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.875", "+", "xeps"}], ",", "0.48"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.875", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.735", "+", "xeps"}], ",", "0.48"}], "}"}], "]"}], 
            ",", 
            RowBox[{"Scaled", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"0.735", "+", "xeps"}], ",", "0.5"}], "}"}], "]"}]}], 
           "}"}], "]"}], ",", "\n", 
         RowBox[{"(*", 
          RowBox[{"roc", " ", "points"}], "*)"}], "\n", 
         RowBox[{"RGBColor", "[", 
          RowBox[{".49", ",", "0", ",", "0"}], "]"}], ",", 
         RowBox[{"AbsolutePointSize", "[", "6", "]"}], ",", 
         RowBox[{"Point", "[", "pt", "]"}]}], "\n", "}"}]}], ",", "\n", 
      RowBox[{"ImageSize", "->", 
       RowBox[{"{", 
        RowBox[{"500", ",", "300"}], "}"}]}]}], "\n", "]"}]}], ",", "\n", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[DoubleStruckCapitalC]", ",", "20"}], "}"}], ",", "10", ",", 
     "65", ",", 
     RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], ",", "\n", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Mu]", ",", "30"}], "}"}], ",", "15", ",", "45", ",", 
     RowBox[{"Appearance", "->", "\"\<Labeled\>\""}]}], "}"}], ",", "\n", 
   RowBox[{"{", 
    RowBox[{"FPR", ",", 
     RowBox[{"{", 
      RowBox[{"False", ",", "True"}], "}"}]}], "}"}], ",", "\n", 
   RowBox[{"TrackedSymbols", ":>", 
    RowBox[{"{", 
     RowBox[{"\[DoubleStruckCapitalC]", ",", "\[Mu]", ",", "FPR"}], "}"}]}], 
   ",", 
   RowBox[{"SynchronousUpdating", "->", "False"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Export", "[", 
  RowBox[{"\"\<manipulate2.swf\>\"", ",", "%"}], "]"}]}], "Input",
 CellChangeTimes->{3.7945181440364237`*^9},
 CellLabel->"In[8]:=",ExpressionUUID->"73d27e45-c9b5-4dbb-8f73-21aec66bf162"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`FPR$$ = 
    False, $CellContext`\[DoubleStruckCapitalC]$$ = 20, $CellContext`\[Mu]$$ =
     30, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[DoubleStruckCapitalC]$$], 20}, 10, 65}, {{
       Hold[$CellContext`\[Mu]$$], 30}, 15, 45}, {
      Hold[$CellContext`FPR$$], {False, True}}}, Typeset`size$$ = {
    500., {147., 153.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = 
    True, $CellContext`\[DoubleStruckCapitalC]$3249380$$ = 
    0, $CellContext`\[Mu]$3249381$$ = 0, $CellContext`FPR$3249382$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`FPR$$ = 
        False, $CellContext`\[DoubleStruckCapitalC]$$ = 
        20, $CellContext`\[Mu]$$ = 30}, "ControllerVariables" :> {
        Hold[$CellContext`\[DoubleStruckCapitalC]$$, $CellContext`\
\[DoubleStruckCapitalC]$3249380$$, 0], 
        Hold[$CellContext`\[Mu]$$, $CellContext`\[Mu]$3249381$$, 0], 
        Hold[$CellContext`FPR$$, $CellContext`FPR$3249382$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`xeps = -0.01; $CellContext`\[Delta]Chop = 
        0.001; $CellContext`xs = 0.875 - 0.735; $CellContext`xo = 
        0.735 + $CellContext`xeps; $CellContext`ys = 
        0.81 - 0.52; $CellContext`yo = 0.52; $CellContext`rsx[
          Pattern[$CellContext`x, 
           
           Blank[]]] := $CellContext`xo + $CellContext`x $CellContext`xs; \
$CellContext`rsy[
          Pattern[$CellContext`y, 
           
           Blank[]]] := $CellContext`yo + $CellContext`y $CellContext`ys; \
$CellContext`rs[{
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]]}] := Scaled[{
           $CellContext`rsx[$CellContext`x], 
           $CellContext`rsy[$CellContext`y]}]; $CellContext`CSet = {}; \
$CellContext`rocpts = Table[{
           With[{$CellContext`z$ = CDF[
               NormalDistribution[20., 5], $CellContext`x]}, 
            If[$CellContext`FPR$$, 1. - $CellContext`z$, $CellContext`z$]], 
           1. - CDF[
            
            NormalDistribution[$CellContext`\[Mu]$$, 
             6.], $CellContext`x]}, {$CellContext`x, 5, 70, 
           1}]; $CellContext`a = ($CellContext`\[Mu]$$ - 20.)/
         6; $CellContext`b = 5/6; $CellContext`auc = CDF[
          NormalDistribution[0, 1], $CellContext`a/Sqrt[
          1 + $CellContext`b^2]]; 
       Map[$CellContext`rs, $CellContext`rocpts]; $CellContext`color1 = 
        RGBColor[0.33, 0.6, 0.7]; $CellContext`color2 = 
        RGBColor[0.48, 0.11, 0.56]; $CellContext`g1 = Plot[
          PDF[
           NormalDistribution[20, 5], $CellContext`x], {$CellContext`x, 0, 
           40}, Axes -> {True, False}, PlotStyle -> {Black, 
            Thickness[Medium]}, 
          PlotRange -> {{0, 85}, {0, 0.09}}]; $CellContext`g2 = 
        If[$CellContext`FPR$$, 
          Plot[
           PDF[
            NormalDistribution[
            20, 5], $CellContext`x], {$CellContext`x, $CellContext`\
\[DoubleStruckCapitalC]$$, 40}, Axes -> {True, False}, 
           PlotRange -> {{0, 85}, {0, 0.09}}, Filling -> Axis, 
           FillingStyle -> $CellContext`color1], 
          Plot[
           PDF[
            NormalDistribution[20, 5], $CellContext`x], {$CellContext`x, 
            0, $CellContext`\[DoubleStruckCapitalC]$$}, Axes -> {True, False},
            PlotRange -> {{0, 85}, {0, 0.09}}, Filling -> Axis, 
           FillingStyle -> $CellContext`color1]]; $CellContext`g3 = Plot[
          PDF[
           
           NormalDistribution[$CellContext`\[Mu]$$, 
            6.], $CellContext`x], {$CellContext`x, 0, 70}, 
          Axes -> {True, False}, PlotStyle -> {Black, 
            Thickness[Medium]}, PlotRange -> {{0, 85}, {0, 0.09}}, 
          PlotStyle -> {Black, 
            Thickness[Medium]}]; $CellContext`g4 = Plot[
          PDF[
           
           NormalDistribution[$CellContext`\[Mu]$$, 
            6.], $CellContext`x], {$CellContext`x, $CellContext`\
\[DoubleStruckCapitalC]$$, 70}, Axes -> {True, False}, 
          PlotRange -> {{0, 85}, {0, 0.09}}, Filling -> Axis, 
          FillingStyle -> $CellContext`color2, PlotStyle -> {Black, 
            Thickness[Medium]}]; $CellContext`Z1 = ReplaceAll[$CellContext`z, 
          First[
           FindRoot[PDF[
              NormalDistribution[$CellContext`\[Mu]$$, 6.], $CellContext`z] == 
            PDF[
              NormalDistribution[20, 5], $CellContext`z], {$CellContext`z, 20 + 
             3 + Abs[$CellContext`\[Mu]$$ - 20]/2}]]]; $CellContext`g5 = 
        If[$CellContext`FPR$$, 
          If[$CellContext`Z1 >= $CellContext`\[DoubleStruckCapitalC]$$, 
           Plot[
            PDF[
             
             NormalDistribution[$CellContext`\[Mu]$$, 
              6.], $CellContext`x], {$CellContext`x, $CellContext`\
\[DoubleStruckCapitalC]$$, $CellContext`Z1}, Axes -> {True, False}, 
            PlotRange -> {{0, 85}, {0, 0.09}}, Filling -> Axis, FillingStyle -> 
            Blend[{$CellContext`color2, $CellContext`color1}]], {}], {}]; \
$CellContext`g6 = If[$CellContext`FPR$$, 
          Plot[
           PDF[
            NormalDistribution[20, 5], $CellContext`x], {$CellContext`x, 
            Max[$CellContext`Z1, $CellContext`\[DoubleStruckCapitalC]$$], 70},
            Axes -> {True, False}, PlotRange -> {{0, 85}, {0, 0.09}}, Filling -> 
           Axis, FillingStyle -> 
           Blend[{$CellContext`color2, $CellContext`color1}]], {}]; \
$CellContext`labelFPR = Style[
          StringForm["FPR = ``", 
           NumberForm[$CellContext`fpr = Chop[1. - CDF[
               NormalDistribution[
               20., 5], $CellContext`\[DoubleStruckCapitalC]$$], \
$CellContext`\[Delta]Chop], {4, 2}]], "Label", 12, 
          Black]; $CellContext`labelSpecificity = Style[
          StringForm["Specificity = ``", 
           NumberForm[$CellContext`specificity = Chop[
              CDF[
               NormalDistribution[
               20., 5], $CellContext`\[DoubleStruckCapitalC]$$], \
$CellContext`\[Delta]Chop], {4, 2}]], "Label", 12, 
          Black]; $CellContext`labelTPR = Style[
          StringForm[
           If[$CellContext`FPR$$, "TPR = ``", "Sensitivity = ``"], 
           NumberForm[$CellContext`tpr = Chop[1. - CDF[
               
               NormalDistribution[$CellContext`\[Mu]$$, 
                6.], $CellContext`\[DoubleStruckCapitalC]$$], $CellContext`\
\[Delta]Chop], {4, 2}]], "Label", 12, Black]; $CellContext`labelAUC = Style[
          StringForm["AUC = ``", 
           NumberForm[
            Chop[$CellContext`auc, $CellContext`\[Delta]Chop], {4, 2}]], 
          "Label", 12, Black]; $CellContext`f2[
          Pattern[$CellContext`x, 
           Blank[]]] := 
        Style[$CellContext`x, 14, Bold, $CellContext`color1]; $CellContext`f1[
          Pattern[$CellContext`x, 
           Blank[]]] := 
        Style[$CellContext`x, 14, Bold, $CellContext`color2]; $CellContext`pt = 
        If[$CellContext`FPR$$, 
          $CellContext`rs[{$CellContext`fpr, $CellContext`tpr}], 
          $CellContext`rs[{$CellContext`specificity, $CellContext`tpr}]]; 
       Show[{$CellContext`g2, $CellContext`g4, $CellContext`g5, \
$CellContext`g6, $CellContext`g1, $CellContext`g3}, Axes -> True, 
         AxesLabel -> {"X", "probability density"}, Prolog -> {
           RGBColor[0.6, 0.73, 0.36], 
           Thickness[Large], 
           Line[
            Map[$CellContext`rs, $CellContext`rocpts]]}, Epilog -> {
           Text[
            $CellContext`f2["Healthy"], {8, 0.04}, {0, 0}, {1, 6}], 
           Text[
            $CellContext`f1["Diseased"], {
             Which[$CellContext`\[Mu]$$ < 23, 40, 
              And[$CellContext`\[Mu]$$ >= 23, $CellContext`\[Mu]$$ < 35], 50, 
              True, 63], 0.015}, {0, 0}, {1, 6}], 
           Text[
            
            If[$CellContext`FPR$$, $CellContext`labelFPR, \
$CellContext`labelSpecificity], {47, 0.071}, {1, 0}], 
           Text[$CellContext`labelTPR, {47, 0.079}, {1, 0}], 
           Text[$CellContext`labelAUC, {47, 0.087}, {1, 0}], 
           Arrow[{
             Scaled[{0.725 + $CellContext`xeps, 0.5}], 
             Scaled[{0.94 + $CellContext`xeps, 0.5}]}], 
           Text[
            If[$CellContext`FPR$$, "FPR", "Specificity"], 
            Scaled[{0.96 + $CellContext`xeps, 0.5}], {0, 0}, {0, 1}], 
           Arrow[{
             Scaled[{0.725 + $CellContext`xeps, 0.5}], 
             Scaled[{0.725 + $CellContext`xeps, 0.95}]}], 
           Text[
            If[$CellContext`FPR$$, "TPR", "Sensitivity"], 
            Scaled[{0.725 + $CellContext`xeps, 0.97}], {0, 0}], 
           Text["1", 
            Scaled[{0.7 + $CellContext`xeps, 0.81}, {-1, 0}]], 
           Text["0", 
            Scaled[{0.7 + $CellContext`xeps, 0.52}, {-1, 0}]], 
           Line[{
             Scaled[{0.715 + $CellContext`xeps, 0.81}], 
             Scaled[{0.725 + $CellContext`xeps, 0.81}]}], 
           Line[{
             Scaled[{0.715 + $CellContext`xeps, 0.52}], 
             Scaled[{0.725 + $CellContext`xeps, 0.52}]}], 
           Text["1", 
            Scaled[{0.865 + $CellContext`xeps, 0.4}, {0, 0}]], 
           Text["0", 
            Scaled[{0.715 + $CellContext`xeps, 0.4}, {0, 0}]], 
           Line[{
             Scaled[{0.875 + $CellContext`xeps, 0.48}], 
             Scaled[{0.875 + $CellContext`xeps, 0.5}]}], 
           Line[{
             Scaled[{0.735 + $CellContext`xeps, 0.48}], 
             Scaled[{0.735 + $CellContext`xeps, 0.5}]}], 
           RGBColor[0.49, 0, 0], 
           AbsolutePointSize[6], 
           Point[$CellContext`pt]}, ImageSize -> {500, 300}]), 
      "Specifications" :> {{{$CellContext`\[DoubleStruckCapitalC]$$, 20}, 10, 
         65, Appearance -> "Labeled"}, {{$CellContext`\[Mu]$$, 30}, 15, 45, 
         Appearance -> "Labeled"}, {$CellContext`FPR$$, {False, True}}}, 
      "Options" :> {
       TrackedSymbols :> {$CellContext`\[DoubleStruckCapitalC]$$, \
$CellContext`\[Mu]$$, $CellContext`FPR$$}, SynchronousUpdating -> False}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{551., {217., 223.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.7945181488802676`*^9},
 CellLabel->"Out[8]=",ExpressionUUID->"7f20c15d-87d4-42c9-8577-255dd76c6f3c"],

Cell[BoxData["\<\"manipulate2.swf\"\>"], "Output",
 CellChangeTimes->{3.794518327846562*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"3938b791-02b4-4beb-8f4a-cdeca74a5b25"]
}, Open  ]]
},
WindowSize->{759, 697},
WindowMargins->{{Automatic, 66}, {11, Automatic}},
FrontEndVersion->"12.0 for Microsoft Windows (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 23959, 642, 1891, "Input",ExpressionUUID->"73d27e45-c9b5-4dbb-8f73-21aec66bf162"],
Cell[25472, 679, 11121, 229, 459, "Output",ExpressionUUID->"7f20c15d-87d4-42c9-8577-255dd76c6f3c"],
Cell[36596, 910, 170, 2, 32, "Output",ExpressionUUID->"3938b791-02b4-4beb-8f4a-cdeca74a5b25"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Ow0c8wNmnqjzHBKC5lhJcJod *)
